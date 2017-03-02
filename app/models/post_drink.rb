class PostDrink < ApplicationRecord
  has_many :posts
  has_many :drinks
end
