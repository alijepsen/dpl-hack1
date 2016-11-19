class OrdersController < ApplicationController
  before_action :set_order, except: [:index, :new, :create]
  before_action :set_restaurant, except: [:index, :new, :create]

  def index
    @orders = @restaurant.orders
  end

  def new
    @order = @restaurant.orders.new
  end

  def create
    @order = @restaurant.orders.new(order_params)
    if @order.save
      redirect_to restaurant_orders_path(@restaurant, @order), success: 'Perfect!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to restaurant_orders_path(@restaurant, @order), success: 'Great!'
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @order.destroy
    redirect_to order_path(@order), success: 'Item Successfully Deleted!'
  end

  private
  def order_params
    params.require(:order).permit(:main_dish, :drinks, :dessert, :price)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def set_order
    @order = @restaurant.orders.find(params[:id])
  end
end
