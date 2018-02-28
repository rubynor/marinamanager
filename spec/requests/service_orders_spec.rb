require 'rails_helper'

RSpec.describe "ServiceOrders", type: :request do
  describe "GET service_orders_path" do
    it "An unauthenticated user should be redirected" do
      get service_orders_path
      expect(response).to have_http_status(302)
    end
    it "An authenticated user should be shown the page" do
      user = FactoryBot.create(:user)
      sign_in(user)
      get service_orders_path
      expect(response).to have_http_status(200)
    end
    it "An authenticated admin should be shown the page" do
      user = FactoryBot.create(:admin)
      sign_in(user)
      get service_orders_path
      expect(response).to have_http_status(200)
    end
  end
end
