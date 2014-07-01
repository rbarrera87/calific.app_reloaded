require "spec_helper"

describe AsistenciasController do
  describe "routing" do

    it "routes to #index" do
      get("/asistencias").should route_to("asistencias#index")
    end

    it "routes to #new" do
      get("/asistencias/new").should route_to("asistencias#new")
    end

    it "routes to #show" do
      get("/asistencias/1").should route_to("asistencias#show", :id => "1")
    end

    it "routes to #edit" do
      get("/asistencias/1/edit").should route_to("asistencias#edit", :id => "1")
    end

    it "routes to #create" do
      post("/asistencias").should route_to("asistencias#create")
    end

    it "routes to #update" do
      put("/asistencias/1").should route_to("asistencias#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/asistencias/1").should route_to("asistencias#destroy", :id => "1")
    end

  end
end
