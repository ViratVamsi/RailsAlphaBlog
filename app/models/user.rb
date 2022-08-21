class User < ApplicationRecord
    
    has_many :articles, dependent: :destroy

    before_save {self.email = email.downcase}

    validates :username, presence: true, 
                length: {minimum: 3, maximum: 25}, 
                uniqueness: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]{2,}+\z/i
    validates :email, presence: true, 
                length: {maximum: 105}, 
                uniqueness: {case_sensitive: false},
                format: {with: VALID_EMAIL_REGEX}

    has_secure_password 
end