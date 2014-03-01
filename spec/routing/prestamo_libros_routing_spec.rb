require "spec_helper"

describe PrestamoLibrosController do
  describe "routing" do

    it "routes to #index" do
      get("/prestamo_libros").should route_to("prestamo_libros#index")
    end

    it "routes to #new" do
      get("/prestamo_libros/new").should route_to("prestamo_libros#new")
    end

    it "routes to #show" do
      get("/prestamo_libros/1").should route_to("prestamo_libros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prestamo_libros/1/edit").should route_to("prestamo_libros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prestamo_libros").should route_to("prestamo_libros#create")
    end

    it "routes to #update" do
      put("/prestamo_libros/1").should route_to("prestamo_libros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prestamo_libros/1").should route_to("prestamo_libros#destroy", :id => "1")
    end

  end
end
