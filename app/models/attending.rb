class Attending < ApplicationRecord
  has_many :users
  has_many :movies
end
