class AddAddressToHouse < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :lat, :string
    add_column :houses, :long, :string
  end
end
