require "spec_helper"

describe CriteriosController do
  describe "routing" do

    it "routes to #index" do
      get("/criterios").should route_to("criterios#index")
    end

    it "routes to #new" do
      get("/criterios/new").should route_to("criterios#new")
    end

    it "routes to #show" do
      get("/criterios/1").should route_to("criterios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/criterios/1/edit").should route_to("criterios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/criterios").should route_to("criterios#create")
    end

    it "routes to #update" do
      put("/criterios/1").should route_to("criterios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/criterios/1").should route_to("criterios#destroy", :id => "1")
    end

  end
end
