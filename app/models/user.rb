class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments

  # validates :email, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true, length: { minimum: 8 }

end
