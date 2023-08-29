# app/serializers/restaurant_serializer.rb
class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address

  has_many :pizzas
end
