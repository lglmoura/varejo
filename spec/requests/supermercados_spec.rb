require 'rails_helper'

RSpec.describe "Supermercados", :type => :request do
  describe "GET /supermercados" do
    it "works! (now write some real specs)" do
      get supermercados_path
      expect(response.status).to be(200)
    end
  end
end
