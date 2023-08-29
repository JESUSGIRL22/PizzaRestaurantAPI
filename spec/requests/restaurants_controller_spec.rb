# spec/controllers/restaurants_controller_spec.rb
require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do
  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  # Add similar tests for other actions (show, destroy, etc.)
end
