class RestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.all
    render json: restaurants, each_serializer: RestaurantSerializer
  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: restaurant, serializer: RestaurantSerializer
  end

  # Other actions...
end
