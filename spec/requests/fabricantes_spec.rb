require 'rails_helper'

RSpec.describe "Fabricantes", :type => :request do
  describe "GET /fabricantes" do
    it "works! (now write some real specs)" do
      get fabricantes_path
      expect(response.status).to be(200)
    end
  end
end
