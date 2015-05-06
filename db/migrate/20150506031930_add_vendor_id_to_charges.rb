class AddVendorIdToCharges < ActiveRecord::Migration
  def change
    add_column :charges, :vendor_id, :integer
  end
end
