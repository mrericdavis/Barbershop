class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :barber_id
      t.datetime :time
      t.integer :haircut_id

      t.timestamps
    end
  end
end
