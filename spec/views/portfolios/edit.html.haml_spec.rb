require 'rails_helper'

RSpec.describe "portfolios/edit", :type => :view do
  before(:each) do
    @portfolio = assign(:portfolio, Portfolio.create!(
      :name => "MyString",
      :description => "MyString",
      :image => "MyString",
      :user => nil
    ))
  end

  it "renders the edit portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolio_path(@portfolio), "post" do

      assert_select "input#portfolio_name[name=?]", "portfolio[name]"

      assert_select "input#portfolio_description[name=?]", "portfolio[description]"

      assert_select "input#portfolio_image[name=?]", "portfolio[image]"

      assert_select "input#portfolio_user_id[name=?]", "portfolio[user_id]"
    end
  end
end
