require 'rails_helper'

RSpec.describe "service_orders/show", type: :view do
  before(:each) do
    @service_order = assign(:service_order, ServiceOrder.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
