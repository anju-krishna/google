require 'rails_helper'

RSpec.describe "portfolios/index", :type => :view do
  before(:each) do
    assign(:portfolios, [
      Portfolio.create!(
        :name => "Name",
        :description => "Description",
        :image => "Image",
        :user => nil
      ),
      Portfolio.create!(
        :name => "Name",
        :description => "Description",
        :image => "Image",
        :user => nil
      )
    ])
  end

  it "renders a list of portfolios" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
