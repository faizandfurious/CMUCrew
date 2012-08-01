require "spec_helper"

describe PracticeLineupsController do
  describe "routing" do

    it "routes to #index" do
      get("/practice_lineups").should route_to("practice_lineups#index")
    end

    it "routes to #new" do
      get("/practice_lineups/new").should route_to("practice_lineups#new")
    end

    it "routes to #show" do
      get("/practice_lineups/1").should route_to("practice_lineups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/practice_lineups/1/edit").should route_to("practice_lineups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/practice_lineups").should route_to("practice_lineups#create")
    end

    it "routes to #update" do
      put("/practice_lineups/1").should route_to("practice_lineups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/practice_lineups/1").should route_to("practice_lineups#destroy", :id => "1")
    end

  end
end
