require "spec_helper"

describe TutoriasController do
  describe "routing" do

    it "routes to #index" do
      get("/tutorias").should route_to("tutorias#index")
    end

    it "routes to #new" do
      get("/tutorias/new").should route_to("tutorias#new")
    end

    it "routes to #show" do
      get("/tutorias/1").should route_to("tutorias#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tutorias/1/edit").should route_to("tutorias#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tutorias").should route_to("tutorias#create")
    end

    it "routes to #update" do
      put("/tutorias/1").should route_to("tutorias#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tutorias/1").should route_to("tutorias#destroy", :id => "1")
    end

  end
end
