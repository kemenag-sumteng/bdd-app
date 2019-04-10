require "rails_helper"

RSpec.describe FungsiController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/fungsi").to route_to("fungsi#index")
    end

    it "routes to #new" do
      expect(:get => "/fungsi/new").to route_to("fungsi#new")
    end

    it "routes to #show" do
      expect(:get => "/fungsi/1").to route_to("fungsi#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fungsi/1/edit").to route_to("fungsi#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/fungsi").to route_to("fungsi#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fungsi/1").to route_to("fungsi#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fungsi/1").to route_to("fungsi#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fungsi/1").to route_to("fungsi#destroy", :id => "1")
    end
  end
end
