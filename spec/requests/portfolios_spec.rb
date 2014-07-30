require 'rails_helper'

RSpec.describe "Portfolios", :type => :request do
  describe "GET /portfolios" do
    it "works! (now write some real specs)" do
      get portfolios_path
      expect(response.status).to be(200)
    end
  end
end
