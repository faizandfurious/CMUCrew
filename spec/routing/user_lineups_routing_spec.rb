require "spec_helper"

describe UserLineupsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_lineups").should route_to("user_lineups#index")
    end

    it "routes to #new" do
      get("/user_lineups/new").should route_to("user_lineups#new")
    end

    it "routes to #show" do
      get("/user_lineups/1").should route_to("user_lineups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_lineups/1/edit").should route_to("user_lineups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_lineups").should route_to("user_lineups#create")
    end

    it "routes to #update" do
      put("/user_lineups/1").should route_to("user_lineups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_lineups/1").should route_to("user_lineups#destroy", :id => "1")
    end

  end
end
