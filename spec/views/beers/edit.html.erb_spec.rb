require 'rails_helper'

RSpec.describe "beers/edit", type: :view do
  before(:each) do
    @beer = assign(:beer, Beer.create!(
      :style => "MyString",
      :growlers_remaining => 1
    ))
  end

  it "renders the edit beer form" do
    render

    assert_select "form[action=?][method=?]", beer_path(@beer), "post" do

      assert_select "input#beer_style[name=?]", "beer[style]"

      assert_select "input#beer_growlers_remaining[name=?]", "beer[growlers_remaining]"
    end
  end
end
