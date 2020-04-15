class User < ApplicationRecord 
    has_many :recipes
    has_many :reviews, through: :recipes 
    has_secure_password()

    validates :user_name, presence: true
end