require "rails_helper"

RSpec.describe UserResponsesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_responses").to route_to("user_responses#index")
    end

    it "routes to #new" do
      expect(:get => "/user_responses/new").to route_to("user_responses#new")
    end

    it "routes to #show" do
      expect(:get => "/user_responses/1").to route_to("user_responses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_responses/1/edit").to route_to("user_responses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_responses").to route_to("user_responses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_responses/1").to route_to("user_responses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_responses/1").to route_to("user_responses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_responses/1").to route_to("user_responses#destroy", :id => "1")
    end

  end
end
