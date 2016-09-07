class CreateInformation < ActiveRecord::Migration
  def change
    create_table :informations do |t|
      t.string :name
      t.date :birthday
      t.text :address
      t.integer :phone_number
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
