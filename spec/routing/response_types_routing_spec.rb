require "rails_helper"

RSpec.describe ResponseTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/response_types").to route_to("response_types#index")
    end

    it "routes to #new" do
      expect(:get => "/response_types/new").to route_to("response_types#new")
    end

    it "routes to #show" do
      expect(:get => "/response_types/1").to route_to("response_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/response_types/1/edit").to route_to("response_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/response_types").to route_to("response_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/response_types/1").to route_to("response_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/response_types/1").to route_to("response_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/response_types/1").to route_to("response_types#destroy", :id => "1")
    end

  end
end
