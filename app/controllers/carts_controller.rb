class CartsController < ApplicationController
  def create
    
  end

  def edit
  end

  def update
  end

  def delete
  end

  def show
    @cart= Cart.find_by(user_id: current_user.id)
    @join_table_cart_items= JoinTableCartItem.where(cart_id: @cart.id)
  end

end
