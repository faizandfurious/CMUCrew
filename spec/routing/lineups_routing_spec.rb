require "spec_helper"

describe LineupsController do
  describe "routing" do

    it "routes to #index" do
      get("/lineups").should route_to("lineups#index")
    end

    it "routes to #new" do
      get("/lineups/new").should route_to("lineups#new")
    end

    it "routes to #show" do
      get("/lineups/1").should route_to("lineups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lineups/1/edit").should route_to("lineups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lineups").should route_to("lineups#create")
    end

    it "routes to #update" do
      put("/lineups/1").should route_to("lineups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lineups/1").should route_to("lineups#destroy", :id => "1")
    end

  end
end
