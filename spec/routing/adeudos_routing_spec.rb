require "spec_helper"

describe AdeudosController do
  describe "routing" do

    it "routes to #index" do
      get("/adeudos").should route_to("adeudos#index")
    end

    it "routes to #new" do
      get("/adeudos/new").should route_to("adeudos#new")
    end

    it "routes to #show" do
      get("/adeudos/1").should route_to("adeudos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/adeudos/1/edit").should route_to("adeudos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/adeudos").should route_to("adeudos#create")
    end

    it "routes to #update" do
      put("/adeudos/1").should route_to("adeudos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/adeudos/1").should route_to("adeudos#destroy", :id => "1")
    end

  end
end
