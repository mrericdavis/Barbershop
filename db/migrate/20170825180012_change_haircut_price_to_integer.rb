class ChangeHaircutPriceToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :haircuts, :price, :integer 
  end
end
