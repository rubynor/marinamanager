require 'rails_helper'

RSpec.describe "service_orders/index", type: :view do
  before(:each) do
    assign(:service_orders, [
      ServiceOrder.create!(),
      ServiceOrder.create!()
    ])
  end

  it "renders a list of service_orders" do
    render
  end
end
