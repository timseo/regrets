class User < ApplicationRecord
  has_secure_password
  has_many :post
  has_many :comment

  # validates :email, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true, length: { minimum: 8 }

end
