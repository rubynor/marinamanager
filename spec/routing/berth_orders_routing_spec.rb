require "rails_helper"

RSpec.describe BerthOrdersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/berth_orders").to route_to("berth_orders#index")
    end

    it "routes to #new" do
      expect(:get => "/berth_orders/new").to route_to("berth_orders#new")
    end

    it "routes to #show" do
      expect(:get => "/berth_orders/1").to route_to("berth_orders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/berth_orders/1/edit").to route_to("berth_orders#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/berth_orders").to route_to("berth_orders#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/berth_orders/1").to route_to("berth_orders#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/berth_orders/1").to route_to("berth_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/berth_orders/1").to route_to("berth_orders#destroy", :id => "1")
    end

  end
end
