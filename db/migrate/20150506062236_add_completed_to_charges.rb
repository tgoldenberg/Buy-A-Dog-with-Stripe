class AddCompletedToCharges < ActiveRecord::Migration
  def change
    add_column :charges, :completed, :boolean, default: false
  end
end
