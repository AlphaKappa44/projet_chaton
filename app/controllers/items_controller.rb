class ItemsController < ApplicationController

  def show
    @item = Item.find_by(id: params[:id])
    @cart = Cart.find_by(user_id: current_user.id)
  end

end
