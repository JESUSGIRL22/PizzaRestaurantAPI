class RestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.all
    render json: restaurants, each_serializer: RestaurantSerializer
  end

  def show
    restaurant = find_restaurant
    if restaurant
      render json: restaurant, serializer: RestaurantSerializer
    else
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  end

  def destroy
    restaurant = find_restaurant
    if restaurant
      restaurant.destroy
      render json: {}, status: :no_content
    else
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  end

  private

  def find_restaurant
    Restaurant.find_by(id: params[:id])
  end
end
