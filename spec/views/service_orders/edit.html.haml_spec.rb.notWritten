require 'rails_helper'

RSpec.describe "service_orders/edit", type: :view do
  before(:each) do
    @service_order = assign(:service_order, ServiceOrder.create!())
  end

  it "renders the edit service_order form" do
    render

    assert_select "form[action=?][method=?]", service_order_path(@service_order), "post" do
    end
  end
end
