class Console < ApplicationRecord
  has_many :games
  validates :name, presence: true
end
