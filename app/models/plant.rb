class Plant < ApplicationRecord
  has_many :users, through: :reviews

  # validates :name, presence: true, uniqueness: true
  # validates :image_url, presence: true
  # validates :price, presence: true
end
