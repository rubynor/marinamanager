require 'rails_helper'

RSpec.describe "berth_orders/new", type: :view do
  before(:each) do
    assign(:berth_order, BerthOrder.new())
  end

  it "renders new berth_order form" do
    render

    assert_select "form[action=?][method=?]", berth_orders_path, "post" do
    end
  end
end
