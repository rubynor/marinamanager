require 'rails_helper'

RSpec.describe "seasons/edit", type: :view do
  before(:each) do
    @season = assign(:season, Season.create!(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit season form" do
    render

    assert_select "form[action=?][method=?]", season_path(@season), "post" do

      assert_select "input[name=?]", "season[title]"

      assert_select "input[name=?]", "season[description]"
    end
  end
end
