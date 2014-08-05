require 'rails_helper'

RSpec.describe "sliders/edit", :type => :view do
  before(:each) do
    @slider = assign(:slider, Slider.create!(
      :name => "MyString",
      :description => "MyString",
      :slide => "MyString",
      :images => "MyString",
      :user => nil
    ))
  end

  it "renders the edit slider form" do
    render

    assert_select "form[action=?][method=?]", slider_path(@slider), "post" do

      assert_select "input#slider_name[name=?]", "slider[name]"

      assert_select "input#slider_description[name=?]", "slider[description]"

      assert_select "input#slider_slide[name=?]", "slider[slide]"

      assert_select "input#slider_images[name=?]", "slider[images]"

      assert_select "input#slider_user_id[name=?]", "slider[user_id]"
    end
  end
end
