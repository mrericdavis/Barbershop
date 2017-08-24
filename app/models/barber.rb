class Barber < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments 
  has_many :haircuts, through: :appointments 
end
