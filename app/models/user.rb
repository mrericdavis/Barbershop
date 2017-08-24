class User < ApplicationRecord
  has_secure_password
  has_many :appointments
  has_many :barbers, through: :appointments 
  has_many :haircuts, through: :appointments 
end
