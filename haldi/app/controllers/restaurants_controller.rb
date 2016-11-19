class RestaurantsController < ApplicationController
    before_action :set_restaurant, except: [:index, :new, :create]

  def index
    @restaurants= Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path, success: "Restaurant Created"
    else
      render :new, error: "Try again! Something went wrong"
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path, success: "Restaurant info updated successfully"
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, success: "Restaurant deleted successfully"
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :city, :state, :postal, :delivery, :latitude, :longitude)
  end
end
