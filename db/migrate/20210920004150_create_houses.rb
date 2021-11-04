class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :address
      t.text :pictures, array: true, default: []
      t.string :price
      t.text :description
      t.text :features, array: true, default: []
      t.string :bedrooms
      t.string :bathrooms
      t.string :sqft
      t.string :acres
      t.references :agent

      t.timestamps
    end
  end
end
