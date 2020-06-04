class JoinTableOrderItemsController < ApplicationController

    # def new
  #   @order = Order.find(params[:order_id])
  #   @join_table_order_item = JoinTableOrderItem.new

  # end

  def create
    @order = Order.find_by(user_id: current_user.id)
    @join_table_order_item = JoinTableOrderItem.new( order_id: @order.id, item_id: params[:item_id])

    if @join_table_order_item.save # essaie de sauvegarder en db
      flash.notice = "join_table_order_item successfully created"
      redirect_to order_path(@order.id)
    else
      flash.alert = "join_table_order_item not created"
      render 'new'
      flash.alert = nil
    end
  end

  def destroy
    @order = Order.find_by(user_id: current_user.id)
    @join_table_order_item = JoinTableOrderItem.find_by(order_id: @order.id, item_id: params[:item_id])
    @join_table_order_item.destroy
    redirect_to order_path
  end
end

