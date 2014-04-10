require "spec_helper"

describe ShCriteriosController do
  describe "routing" do

    it "routes to #index" do
      get("/sh_criterios").should route_to("sh_criterios#index")
    end

    it "routes to #new" do
      get("/sh_criterios/new").should route_to("sh_criterios#new")
    end

    it "routes to #show" do
      get("/sh_criterios/1").should route_to("sh_criterios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sh_criterios/1/edit").should route_to("sh_criterios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sh_criterios").should route_to("sh_criterios#create")
    end

    it "routes to #update" do
      put("/sh_criterios/1").should route_to("sh_criterios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sh_criterios/1").should route_to("sh_criterios#destroy", :id => "1")
    end

  end
end
