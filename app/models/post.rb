class Post < ApplicationRecord
  belongs_to :user
  belongs_to :post_drink
  has_many :comments
  

end
