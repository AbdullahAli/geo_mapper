class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.float :longitude
      t.float :latitude
      t.string :ip_address
    end
  end
end
