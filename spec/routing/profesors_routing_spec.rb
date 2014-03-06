require "spec_helper"

describe ProfesorsController do
  describe "routing" do

    it "routes to #index" do
      get("/profesors").should route_to("profesors#index")
    end

    it "routes to #new" do
      get("/profesors/new").should route_to("profesors#new")
    end

    it "routes to #show" do
      get("/profesors/1").should route_to("profesors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/profesors/1/edit").should route_to("profesors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/profesors").should route_to("profesors#create")
    end

    it "routes to #update" do
      put("/profesors/1").should route_to("profesors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/profesors/1").should route_to("profesors#destroy", :id => "1")
    end

  end
end
