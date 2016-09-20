class CreateMediaArts < ActiveRecord::Migration
  def change
    create_table :media_arts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
