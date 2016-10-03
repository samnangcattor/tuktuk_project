class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :amount
      t.integer :state
      t.references :user
      t.references :product

      t.timestamps null: false
    end
  end
end
