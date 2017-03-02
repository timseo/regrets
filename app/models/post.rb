class Post < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :drinks, through: :orders
  has_many :comments
  # has_attached_file :drink_logo, :styles => { :medium => "300x300#", :thumb => "100x100#" }
  #
  # validates_attachment_content_type :drink_logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  #
  #
  # validates :quantity, presence: true
  # validates :drink_logo, presence: false



end
