require "spec_helper"

describe LibrosController do
  describe "routing" do

    it "routes to #index" do
      get("/libros").should route_to("libros#index")
    end

    it "routes to #new" do
      get("/libros/new").should route_to("libros#new")
    end

    it "routes to #show" do
      get("/libros/1").should route_to("libros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/libros/1/edit").should route_to("libros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/libros").should route_to("libros#create")
    end

    it "routes to #update" do
      put("/libros/1").should route_to("libros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/libros/1").should route_to("libros#destroy", :id => "1")
    end

  end
end
