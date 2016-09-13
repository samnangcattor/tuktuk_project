class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :photo
      t.integer :slide_show, default: 0
      t.references :product, index: true

      t.timestamps null: false
    end
  end
end
