class User < ApplicationRecord
    validates :username, :password_digest, :session_token, presence: true
    validates :username, :session_token, uniqueness: true

    has_many :tasks,
        foreign_key: :user_id,
        class_name: :Task

    has_many :comments,
        foreign_key: :user_id,
        class_name: :Comment

    def self.find_by_credentials(username, password)
        user = User.find_by(:username)
        if user && user.is_password?(password)
            return user
        else
            return nil  
        end
    end

    def password=(password)
        @password = password
        password_digest = BCrypt::Password.create(@password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end
    
    def reset_session_token!
        session_token = SecureRandom.urlsafe_base64
    end

    def ensure_session_token
        session_token ||= SecureRandom.urlsafe_base64
    end
end
