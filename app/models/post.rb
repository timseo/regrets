class Post < ApplicationRecord
  belongs_to :user
  belongs_to :drink
  has_many :comment

end
