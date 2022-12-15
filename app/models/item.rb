class Item < ApplicationRecord
  has_many :shopping_carts
  
  
  belongs_to :user, default: -> {Current.user}
end
