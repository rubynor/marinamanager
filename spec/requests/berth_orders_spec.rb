require 'rails_helper'

RSpec.describe "BerthOrders", type: :request do
  describe "GET /berth_orders" do
    it "works! (now write some real specs)" do
      get berth_orders_path
      expect(response).to have_http_status(200)
    end
  end
end
