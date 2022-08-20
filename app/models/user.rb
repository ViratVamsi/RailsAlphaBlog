class User < ApplicationRecord
    validates :username, presence: true, 
                length: {minimum: 3, maximum: 25}, 
                uniqueness: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]{2,}+\z/i
    validates :email, presence: true, 
                length: {maximum: 105}, 
                uniqueness: {case_sensitive: false},
                format: {with: VALID_EMAIL_REGEX}

    
    has_many :articles
end