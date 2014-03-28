require "spec_helper"

describe EmpresasController do
  describe "routing" do

    it "routes to #index" do
      get("/empresas").should route_to("empresas#index")
    end

    it "routes to #new" do
      get("/empresas/new").should route_to("empresas#new")
    end

    it "routes to #show" do
      get("/empresas/1").should route_to("empresas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/empresas/1/edit").should route_to("empresas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/empresas").should route_to("empresas#create")
    end

    it "routes to #update" do
      put("/empresas/1").should route_to("empresas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/empresas/1").should route_to("empresas#destroy", :id => "1")
    end

  end
end
