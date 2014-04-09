require "spec_helper"

describe SbCriteriosController do
  describe "routing" do

    it "routes to #index" do
      get("/sb_criterios").should route_to("sb_criterios#index")
    end

    it "routes to #new" do
      get("/sb_criterios/new").should route_to("sb_criterios#new")
    end

    it "routes to #show" do
      get("/sb_criterios/1").should route_to("sb_criterios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sb_criterios/1/edit").should route_to("sb_criterios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sb_criterios").should route_to("sb_criterios#create")
    end

    it "routes to #update" do
      put("/sb_criterios/1").should route_to("sb_criterios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sb_criterios/1").should route_to("sb_criterios#destroy", :id => "1")
    end

  end
end
