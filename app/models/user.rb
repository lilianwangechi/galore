class User < ApplicationRecord
  has_many :plants, through: :reviews

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  
end
