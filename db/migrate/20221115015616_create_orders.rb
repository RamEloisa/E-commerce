class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :users, index: true
      t.belongs_to :items, index: true
      t.timestamps
    end
  end
end
