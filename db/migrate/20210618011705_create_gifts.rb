class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :picture
      t.string :description
      t.string :country
      t.integer :price
      t.integer :remaining_quota

      t.timestamps null: false
    end
  end
end
