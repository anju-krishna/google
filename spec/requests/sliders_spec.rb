require 'rails_helper'

RSpec.describe "Sliders", :type => :request do
  describe "GET /sliders" do
    it "works! (now write some real specs)" do
      get sliders_path
      expect(response.status).to be(200)
    end
  end
end
