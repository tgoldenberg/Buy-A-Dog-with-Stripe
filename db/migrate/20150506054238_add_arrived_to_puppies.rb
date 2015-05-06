class AddArrivedToPuppies < ActiveRecord::Migration
  def change
    add_column :puppies, :arrived, :boolean
  end
end
