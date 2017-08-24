class Haircut < ApplicationRecord
  has_many :appointments
  has_many :barbers, through: :appointments 
  has_many :users, through: :appointments 
end
