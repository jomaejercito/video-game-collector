class Game < ApplicationRecord
  has_many :collections
  has_many :users, through: :collections
  belongs_to :console
end
