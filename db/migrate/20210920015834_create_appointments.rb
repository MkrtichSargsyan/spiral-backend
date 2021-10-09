class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.references :user, index: true, foreign_key: true
      t.integer :house_id

      t.timestamps
    end
  end
end
