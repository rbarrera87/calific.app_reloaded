require "spec_helper"

describe CuatrimestresController do
  describe "routing" do

    it "routes to #index" do
      get("/cuatrimestres").should route_to("cuatrimestres#index")
    end

    it "routes to #new" do
      get("/cuatrimestres/new").should route_to("cuatrimestres#new")
    end

    it "routes to #show" do
      get("/cuatrimestres/1").should route_to("cuatrimestres#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cuatrimestres/1/edit").should route_to("cuatrimestres#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cuatrimestres").should route_to("cuatrimestres#create")
    end

    it "routes to #update" do
      put("/cuatrimestres/1").should route_to("cuatrimestres#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cuatrimestres/1").should route_to("cuatrimestres#destroy", :id => "1")
    end

  end
end
