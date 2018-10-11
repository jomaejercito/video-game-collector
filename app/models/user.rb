class User < ApplicationRecord
  has_many :collections
  has_many :games, through: :collections
  has_secure_password  
end
