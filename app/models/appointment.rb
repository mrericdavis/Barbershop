class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :barber
  belongs_to :haircut
end
