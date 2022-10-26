class AdminsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @q = Admin.ransack(params[:q])
    @admins = @q.result(distinct: true)
    # @admins = Admin.all
    @dishes =Dish.all
    @users = User.all
    @admin_orders = Order.all
    
  end
  def show
    @admin_order = Order.find(params[:id])
  end
end
