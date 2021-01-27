require 'bcrypt'

class User < ActiveRecord::Base
   
    has_many :articles
    validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false }, 
    format: { with: VALID_EMAIL_REGEX }
    before_save { self.email = email.downcase }
    validates :password_digest, presence: true, length: { minimum: 6 }, allow_nil: true
    
    def password_digest=(hashed_psw)
        hashed_password = hashed_psw
    end

 
end






