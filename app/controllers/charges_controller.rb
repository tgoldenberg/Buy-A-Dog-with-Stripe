class ChargesController < ApplicationController
  def new
  end

  def complete
    @charge = Charge.find(params[:charge_id])
    @puppy = Puppy.find_by(user_id: @charge.user_id, arrived: false, name: @charge.item)

    Stripe.api_key = ENV["stripe_api_key"]
    token = params[:token]
    charge = Stripe::Charge.create({
      :amount => @charge.price*100,
      :description => 'Rails Stripe customer',
      :customer => params[:customer_id],
      :currency => 'usd',
      :destination => @charge.vendor.uid,
      :application_fee => 200+(@charge.price*3)+ 31
      },
    )
    @charge.update_attribute(:completed, true)
    @puppy.update_attribute(:arrived, true)

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path
  end

  def create
    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card => params[:stripeToken]
    )
    @charge = Charge.new(
    price: params[:charge]["amount"].to_i,
    user_id: current_user.id,
    vendor_id: params[:charge]["owner_id"].to_i,
    item: params[:charge]["item"],
    token: params[:stripeToken],
    customer_id: customer.id
    )
    @charge.save

    @puppy = Puppy.where(name: @charge.item).first
    @puppy.user_id = @charge.user_id
    @puppy.arrived = false
    @puppy.save
  end
end
