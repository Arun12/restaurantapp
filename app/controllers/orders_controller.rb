class OrdersController < ApplicationController
 
  def new
    @order = Order.new
  end

  def create
    debugger
    @order = current_user.orders.new(
      order.name = @dish.name
      order.price = @dish.price
      order.description = @dish.description
    )

    if @order.save
      redirect_to admins_path
    else
      render :new, status: :unprocessable_entity
    end
  end  
end
