require "spec_helper"

describe ProfesorCatalogosController do
  describe "routing" do

    it "routes to #index" do
      get("/profesor_catalogos").should route_to("profesor_catalogos#index")
    end

    it "routes to #new" do
      get("/profesor_catalogos/new").should route_to("profesor_catalogos#new")
    end

    it "routes to #show" do
      get("/profesor_catalogos/1").should route_to("profesor_catalogos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/profesor_catalogos/1/edit").should route_to("profesor_catalogos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/profesor_catalogos").should route_to("profesor_catalogos#create")
    end

    it "routes to #update" do
      put("/profesor_catalogos/1").should route_to("profesor_catalogos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/profesor_catalogos/1").should route_to("profesor_catalogos#destroy", :id => "1")
    end

  end
end
