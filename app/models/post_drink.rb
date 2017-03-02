class PostDrink < ApplicationRecord
  has_many :posts
  has_many :drinks
  validates :drink_id,  presence: true
end
