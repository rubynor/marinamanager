require 'rails_helper'

RSpec.describe "seasons/new", type: :view do
  before(:each) do
    assign(:season, Season.new(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new season form" do
    render

    assert_select "form[action=?][method=?]", seasons_path, "post" do

      assert_select "input[name=?]", "season[title]"

      assert_select "input[name=?]", "season[description]"
    end
  end
end
