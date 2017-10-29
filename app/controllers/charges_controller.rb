class ChargesController < ApplicationController

  def new
  end

  def create
  
    # Amount in cents

    Haircut.find_by(id: params[:form_haircut_id])
    @haircutprice = Haircut.find_by(id: params[:form_haircut_id])
   
    @amount = @haircutprice.price * 100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken],
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount.to_i,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
