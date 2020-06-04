class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    
  end

  def edit
  end

  def update
  end

  def delete
  end

  def show
    @order= Order.find_by(user_id: current_user.id)
    @join_table_order_items= JoinTableOrderItem.where(order_id: @order.id)
  end
end
