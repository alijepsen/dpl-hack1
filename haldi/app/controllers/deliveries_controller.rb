class DeliveriesController < ApplicationController
  before_action :set_order
  before_action :set_delivery, except: [:index, :create, :new]

  def index
    @deliveries = @order.deliveries
  end

  def new
    @delivery = Delivery.new
  end

  def create
    @delivery = Delivery.new(delivery_params)
    @delivery.order_id = @order.id
    if @delivery.save
      redirect_to order_deliveries_path(@order, @delivery), success: 'Perfect!'
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @delivery.update(delivery_params)
      redirect_to odrder_delivery_path(@order, @delivery), success: 'Great!'
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @delivery.destroy
    redirect_to delivery_path(@delivery), success: 'Delivery Deleted!'
  end

  private
  def delivery_params
    params.require(:delivery).permit(:total, :item)
  end

  def set_order
    @order = Order.find(params[:order_id])
  end

  def set_delivery
    @delivery = @order.deliveries.find(params[:id])
  end
end
