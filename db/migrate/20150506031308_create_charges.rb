class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :item
      t.integer :price
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
