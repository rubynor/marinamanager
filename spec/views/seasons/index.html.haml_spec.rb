require 'rails_helper'

RSpec.describe "seasons/index", type: :view do
  before(:each) do
    assign(:seasons, [
      Season.create!(
        :title => "Title",
        :description => "Description"
      ),
      Season.create!(
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of seasons" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
