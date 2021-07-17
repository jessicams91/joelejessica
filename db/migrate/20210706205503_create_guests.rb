class CreateGuests< ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.integer :lodging
      t.integer :guests
      t.boolean :friday
      t.boolean :crepe
      t.boolean :sunday
      t.string :observation
      t.string :hair_makeup
      t.string :full_names

      t.timestamps null: false
    end
  end
end
