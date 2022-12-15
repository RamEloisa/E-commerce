class CreateShoppingCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_carts do |t|
      t.belongs_to :user, index: true
      t.belongs_to :item, index: true

      t.timestamps
    end
  end
end
