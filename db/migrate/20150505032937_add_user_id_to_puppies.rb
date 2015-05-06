class AddUserIdToPuppies < ActiveRecord::Migration
  def change
    add_column :puppies, :user_id, :integer
  end
end
