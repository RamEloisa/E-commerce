class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.string :description
      t.string :category
      t.float :price
      

      t.timestamps
    end
  end
end
