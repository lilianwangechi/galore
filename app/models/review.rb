class Review < ApplicationRecord
  belongs_to :plant
  belongs_to :user

  validates :rating, numericality: { less_than_or_equal_to: 5 }
end
