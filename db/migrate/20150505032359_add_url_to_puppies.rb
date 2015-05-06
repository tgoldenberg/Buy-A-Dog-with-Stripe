class AddUrlToPuppies < ActiveRecord::Migration
  def change
    add_column :puppies, :url, :string
  end
end
