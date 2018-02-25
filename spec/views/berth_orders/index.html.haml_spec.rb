require 'rails_helper'

RSpec.describe "berth_orders/index", type: :view do
  before(:each) do
    assign(:berth_orders, [
      BerthOrder.create!(),
      BerthOrder.create!()
    ])
  end

  it "renders a list of berth_orders" do
    render
  end
end
