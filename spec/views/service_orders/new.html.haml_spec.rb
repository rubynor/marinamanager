require 'rails_helper'

RSpec.describe "service_orders/new", type: :view do
  before(:each) do
    assign(:service_order, ServiceOrder.new())
  end

  it "renders new service_order form" do
    render

    assert_select "form[action=?][method=?]", service_orders_path, "post" do
    end
  end
end
