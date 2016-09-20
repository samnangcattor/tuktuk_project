class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :discount
      t.text :description
      t.references :brand, index: true
      t.references :type
      t.references :media_art

      t.timestamps null: false
    end
  end
end
