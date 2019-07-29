class User < ApplicationRecord

    has_many :user_cities, dependent: :destroy
    has_many :cities, through: :user_cities

    has_secure_password
 
    def auth_token
        JWT.encode({ id: self.id }, ';lakjs;fajs;lkj;')
    end
    
end
