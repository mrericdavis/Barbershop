class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    @barber = Barber.all
    render "index.html.erb"
  end

  def show
    @barber = Barber.find_by(id: params[:id])
    @appointment = Appointment.all
    render "show.html.erb"
  end

  def new
  end

  def create
    @haircutprice = Haircut.find_by(id: params[:form_haircut_id])
    appointment = Appointment.new(
     haircut_id: params[:form_haircut_id],
     barber_id: params[:form_barber_id],
     time: DateTime.strptime(params[:datetime], "%m/%d/%Y %H:%M %p"),
     user_id: current_user.id
      )
    appointment.save
    render "/charges/new" 
  end
end
