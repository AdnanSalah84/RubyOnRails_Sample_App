class User < ApplicationRecord
    validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false } 
    # where uniqueness means duplicate email addresses
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end

