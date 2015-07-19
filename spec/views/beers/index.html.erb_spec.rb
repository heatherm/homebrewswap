require 'rails_helper'

RSpec.describe "beers/index", type: :view do
  before(:each) do
    assign(:beers, [
      Beer.create!(
        :style => "Style",
        :growlers_remaining => 1
      ),
      Beer.create!(
        :style => "Style",
        :growlers_remaining => 1
      )
    ])
  end

  it "renders a list of beers" do
    render
    assert_select "tr>td", :text => "Style".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
