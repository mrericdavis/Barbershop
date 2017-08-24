class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    @barber = Barber.all
  end

  def show
    @appointment = Appointment.find_by(id: params[:id])
  end

  def new
  end

  def create
    appointment = Appointment.new(
     haircut_id: params[:form_haircut_id],
     barber_id: params[:form_barber_id],
     time: DateTime.strptime(params[:datetime], "%m/%d/%Y %H:%M %p"),
     user_id: current_user.id
      )
    appointment.save
    redirect_to "/"
  end
end
