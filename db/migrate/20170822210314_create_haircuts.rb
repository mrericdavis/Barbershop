class CreateHaircuts < ActiveRecord::Migration[5.1]
  def change
    create_table :haircuts do |t|
      t.string :name
      t.decimal :price, precision: 9, scale: 2

      t.timestamps
    end
  end
end
