class OrderedMovie < ApplicationRecord
  belongs_to :order
  belongs_to :movie
end
