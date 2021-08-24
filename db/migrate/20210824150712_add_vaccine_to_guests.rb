class AddVaccineToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :vaccine, :string
  end
end
