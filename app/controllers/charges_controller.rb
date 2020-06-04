class ChargesController < ApplicationController
  def new
  end
  
  def create
    @user = current_user
    @order = Order.create(user_id: @user.id)
    JoinTableCartItem.where(cart_id: Cart.find_by(user_id: @user.id).id).each do |x| 
      JoinTableOrderItem.create(order_id: @order.id, item_id: x.item_id)
    end
    Cart.empty(@user)
    # Amount in cents
    @amount = 500
  
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'usd',
    })
  
    redirect_to root_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
