class ChangePhoneNumberToString < ActiveRecord::Migration[5.1]
  def change
    change_column :barbers, :phone_number, :string
  end
end
