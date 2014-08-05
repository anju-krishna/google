require 'rails_helper'

RSpec.describe "sliders/show", :type => :view do
  before(:each) do
    @slider = assign(:slider, Slider.create!(
      :name => "Name",
      :description => "Description",
      :slide => "Slide",
      :images => "Images",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Slide/)
    expect(rendered).to match(/Images/)
    expect(rendered).to match(//)
  end
end
