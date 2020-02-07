class User < ActiveRecord::Base
    has_many :properties 
    has_secure_password

    
end
