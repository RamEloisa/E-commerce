class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name_user
      t.string :password_digest
      t.string :name
      t.string :address
      t.string :role

      t.timestamps
    end
  end
end
