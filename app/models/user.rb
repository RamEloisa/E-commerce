class User < ApplicationRecord
  
  has_secure_password
  validates :name_user, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :items
  has_many :orders
  has_many :shopping_cart
end
