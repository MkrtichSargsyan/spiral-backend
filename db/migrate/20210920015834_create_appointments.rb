class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.integer :user_id
      t.integer :agent_id

      t.timestamps
    end
  end
end
