class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :barber
  belongs_to :haircut

  def new_time
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end  
end
