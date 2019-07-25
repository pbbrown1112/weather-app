class User < ApplicationRecord

    has_many :user_cities, dependent: :destroy
    has_many :cities, through: :user_cities
    
end
