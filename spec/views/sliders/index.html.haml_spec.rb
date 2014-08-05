require 'rails_helper'

RSpec.describe "sliders/index", :type => :view do
  before(:each) do
    assign(:sliders, [
      Slider.create!(
        :name => "Name",
        :description => "Description",
        :slide => "Slide",
        :images => "Images",
        :user => nil
      ),
      Slider.create!(
        :name => "Name",
        :description => "Description",
        :slide => "Slide",
        :images => "Images",
        :user => nil
      )
    ])
  end

  it "renders a list of sliders" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Slide".to_s, :count => 2
    assert_select "tr>td", :text => "Images".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
