require "spec_helper"

describe CalificacionesController do
  describe "routing" do

    it "routes to #index" do
      get("/calificaciones").should route_to("calificaciones#index")
    end

    it "routes to #new" do
      get("/calificaciones/new").should route_to("calificaciones#new")
    end

    it "routes to #show" do
      get("/calificaciones/1").should route_to("calificaciones#show", :id => "1")
    end

    it "routes to #edit" do
      get("/calificaciones/1/edit").should route_to("calificaciones#edit", :id => "1")
    end

    it "routes to #create" do
      post("/calificaciones").should route_to("calificaciones#create")
    end

    it "routes to #update" do
      put("/calificaciones/1").should route_to("calificaciones#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/calificaciones/1").should route_to("calificaciones#destroy", :id => "1")
    end

  end
end
