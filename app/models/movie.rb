class Movie < ApplicationRecord
  has_many :attendings
  has_many :users, through: :attendings
end
