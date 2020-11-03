require 'bcrypt'

class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :password_digest, :session_token, presence: true
    validates :session_token, uniqueness: true
    validates :password, length: {minimum: 8}, allow_nil: true
    after_initialize :ensure_session_token


    #ASPIRE


    #A
    attr_reader :password

    #S
    def self.find_by_credentials(un, pw)
        user = User.find_by(username: un)

        if user && user.is_password?(pw)
            return user
        else
            return nil
        end
    end

    #P
    def password=(pw)
        @password = pw
        self.password_digest = BCrypt::Password.create(@password)
    end
    
    #I
    def is_password?(pw)
        #bcrypt password new changes string to bcrypt object
        #bcrypt password create salts and hashes
        BCrypt::Password.new(self.password_digest).is_password?(pw)
    end

    #R
    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save!
        self.session_token
    end

    #E
    def ensure_session_token #need to return session token because of login method in ApplicationController
        self.session_token ||= SecureRandom.urlsafe_base64
    end


        
end
