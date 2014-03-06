require "spec_helper"

describe TutorGruposController do
  describe "routing" do

    it "routes to #index" do
      get("/tutor_grupos").should route_to("tutor_grupos#index")
    end

    it "routes to #new" do
      get("/tutor_grupos/new").should route_to("tutor_grupos#new")
    end

    it "routes to #show" do
      get("/tutor_grupos/1").should route_to("tutor_grupos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tutor_grupos/1/edit").should route_to("tutor_grupos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tutor_grupos").should route_to("tutor_grupos#create")
    end

    it "routes to #update" do
      put("/tutor_grupos/1").should route_to("tutor_grupos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tutor_grupos/1").should route_to("tutor_grupos#destroy", :id => "1")
    end

  end
end
