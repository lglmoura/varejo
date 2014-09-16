require "rails_helper"

RSpec.describe SupermercadosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/supermercados").to route_to("supermercados#index")
    end

    it "routes to #new" do
      expect(:get => "/supermercados/new").to route_to("supermercados#new")
    end

    it "routes to #show" do
      expect(:get => "/supermercados/1").to route_to("supermercados#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/supermercados/1/edit").to route_to("supermercados#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/supermercados").to route_to("supermercados#create")
    end

    it "routes to #update" do
      expect(:put => "/supermercados/1").to route_to("supermercados#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/supermercados/1").to route_to("supermercados#destroy", :id => "1")
    end

  end
end
