require "spec_helper"

describe PracticesController do
  describe "routing" do

    it "routes to #index" do
      get("/practices").should route_to("practices#index")
    end

    it "routes to #new" do
      get("/practices/new").should route_to("practices#new")
    end

    it "routes to #show" do
      get("/practices/1").should route_to("practices#show", :id => "1")
    end

    it "routes to #edit" do
      get("/practices/1/edit").should route_to("practices#edit", :id => "1")
    end

    it "routes to #create" do
      post("/practices").should route_to("practices#create")
    end

    it "routes to #update" do
      put("/practices/1").should route_to("practices#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/practices/1").should route_to("practices#destroy", :id => "1")
    end

  end
end
