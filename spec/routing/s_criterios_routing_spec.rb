require "spec_helper"

describe SCriteriosController do
  describe "routing" do

    it "routes to #index" do
      get("/s_criterios").should route_to("s_criterios#index")
    end

    it "routes to #new" do
      get("/s_criterios/new").should route_to("s_criterios#new")
    end

    it "routes to #show" do
      get("/s_criterios/1").should route_to("s_criterios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/s_criterios/1/edit").should route_to("s_criterios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/s_criterios").should route_to("s_criterios#create")
    end

    it "routes to #update" do
      put("/s_criterios/1").should route_to("s_criterios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/s_criterios/1").should route_to("s_criterios#destroy", :id => "1")
    end

  end
end
