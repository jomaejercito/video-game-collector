class User < ApplicationRecord
  has_many :collections
  has_many :games, through: :collections
  has_secure_password

  validates :name, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true   
end
