require 'rails_helper'

RSpec.describe "berth_orders/show", type: :view do
  before(:each) do
    @berth_order = assign(:berth_order, BerthOrder.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
