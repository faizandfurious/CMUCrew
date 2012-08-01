require "spec_helper"

describe RaceLineupsController do
  describe "routing" do

    it "routes to #index" do
      get("/race_lineups").should route_to("race_lineups#index")
    end

    it "routes to #new" do
      get("/race_lineups/new").should route_to("race_lineups#new")
    end

    it "routes to #show" do
      get("/race_lineups/1").should route_to("race_lineups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/race_lineups/1/edit").should route_to("race_lineups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/race_lineups").should route_to("race_lineups#create")
    end

    it "routes to #update" do
      put("/race_lineups/1").should route_to("race_lineups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/race_lineups/1").should route_to("race_lineups#destroy", :id => "1")
    end

  end
end
