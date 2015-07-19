require 'rails_helper'

RSpec.describe "beers/show", type: :view do
  before(:each) do
    @beer = assign(:beer, Beer.create!(
      :style => "Style",
      :growlers_remaining => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Style/)
    expect(rendered).to match(/1/)
  end
end
