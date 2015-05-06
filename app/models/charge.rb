class Charge < ActiveRecord::Base
  belongs_to :user
  belongs_to :vendor, class_name: 'User', foreign_key: 'vendor_id'
end
