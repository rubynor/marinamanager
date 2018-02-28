require 'rails_helper'
require 'support/request_spec_helper'

RSpec.describe "BerthOrders", type: :request do
  describe "GET /berth_orders" do
    it "An unauthenticated user should be redirected" do
      get berth_orders_path
      expect(response).to have_http_status(302)
    end

    it "An authenticated user should be shown the page" do
      user = FactoryBot.create(:user)
      sign_in(user)
      get berth_orders_path
      expect(response).to have_http_status(200)
    end
  end
end
