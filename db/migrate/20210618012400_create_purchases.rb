class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :buyer
      t.integer :quotas
      t.string :status
      t.integer :gift_id
      t.string :message

      t.timestamps null: false
    end
  end
end
