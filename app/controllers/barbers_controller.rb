class BarbersController < ApplicationController
  def index
    @barbers = Barber.all
    render "index.html.erb"
  end  

  def new
    render "new.html.erb"
  end 

  def create
    render "create.html.erb"
  end

  def show
    @barber = Barber.find_by(id: params[:id])
    render "show.html.erb"
  end  

  def edit
    render "edit.html.erb"
  end 

  def update
    render "update.html.erb"
  end 

  def destroy
    render "destroy.html.erb"
  end 

  def haircut
    render "haircut.html.erb"
  end 

  def calendar
    @barber = Barber.new
    render "calendar.html.erb"
  end 

  def contact
    render "contact.html.erb"
  end
end

