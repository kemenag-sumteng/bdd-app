require "rails_helper"

RSpec.describe FungsisController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/fungsis").to route_to("fungsis#index")
    end

    it "routes to #new" do
      expect(:get => "/fungsis/new").to route_to("fungsis#new")
    end

    it "routes to #show" do
      expect(:get => "/fungsis/1").to route_to("fungsis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fungsis/1/edit").to route_to("fungsis#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/fungsis").to route_to("fungsis#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fungsis/1").to route_to("fungsis#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fungsis/1").to route_to("fungsis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fungsis/1").to route_to("fungsis#destroy", :id => "1")
    end
  end
end
