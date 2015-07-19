require 'rails_helper'

RSpec.describe "beers/new", type: :view do
  before(:each) do
    assign(:beer, Beer.new(
      :style => "MyString",
      :growlers_remaining => 1
    ))
  end

  it "renders new beer form" do
    render

    assert_select "form[action=?][method=?]", beers_path, "post" do

      assert_select "input#beer_style[name=?]", "beer[style]"

      assert_select "input#beer_growlers_remaining[name=?]", "beer[growlers_remaining]"
    end
  end
end
