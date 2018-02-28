require 'rails_helper'

RSpec.describe "berth_orders/edit", type: :view do
  before(:each) do
    @berth_order = FactoryBot.create(:berth)
    @berth_order.save!
  end

  it "renders the edit berth_order form" do
    render

    assert_select "form[action=?][method=?]", berth_order_path(@berth_order), "post" do
    end
  end
end
