class AddDetailsToCharges < ActiveRecord::Migration
  def change
    add_column :charges, :token, :string
    add_column :charges, :customer_id, :string
  end
end
