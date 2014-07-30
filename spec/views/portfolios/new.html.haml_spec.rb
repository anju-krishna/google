require 'rails_helper'

RSpec.describe "portfolios/new", :type => :view do
  before(:each) do
    assign(:portfolio, Portfolio.new(
      :name => "MyString",
      :description => "MyString",
      :image => "MyString",
      :user => nil
    ))
  end

  it "renders new portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolios_path, "post" do

      assert_select "input#portfolio_name[name=?]", "portfolio[name]"

      assert_select "input#portfolio_description[name=?]", "portfolio[description]"

      assert_select "input#portfolio_image[name=?]", "portfolio[image]"

      assert_select "input#portfolio_user_id[name=?]", "portfolio[user_id]"
    end
  end
end
