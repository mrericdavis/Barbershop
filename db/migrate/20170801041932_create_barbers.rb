class CreateBarbers < ActiveRecord::Migration[5.1]
  def change
    create_table :barbers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :image

      t.timestamps
    end
  end
end
