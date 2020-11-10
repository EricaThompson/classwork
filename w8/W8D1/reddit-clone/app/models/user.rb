class User < ApplicationRecord

    # remember that password= method needs an instance of the password 
    # reset_session_token uses self and not session[:session_token](only in the application_controller)
    # self.find_by_credentials starts with username and then verifies with password
    
    validates :username, :password_digest, presence: true
    validates :session_token, uniqueness: true
    validates :password, length: {minimum: 6, allow_nil: true}

    has_many :subs,
        primary_key: :id,
        foreign_key: :moderator_id,
        class_name: :Sub

    attr_reader :password
    after_initialize :ensure_session_token!
    #ASPIRE

    def self.find_by_credentials(username, password)
        @user = User.find_by(username: username)
        if @user && @user.is_password?(password)
            @user
        else
            nil
        end
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password) 
    end

    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base64
        self.save!
        self.session_token
    end

    def ensure_session_token!
        self.session_token ||= SecureRandom.urlsafe_base64
    end

end
