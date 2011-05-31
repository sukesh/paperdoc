require "spec_helper"

describe InstituteMembersController do
  describe "routing" do

    it "routes to #index" do
      get("/institute_members").should route_to("institute_members#index")
    end

    it "routes to #new" do
      get("/institute_members/new").should route_to("institute_members#new")
    end

    it "routes to #show" do
      get("/institute_members/1").should route_to("institute_members#show", :id => "1")
    end

    it "routes to #edit" do
      get("/institute_members/1/edit").should route_to("institute_members#edit", :id => "1")
    end

    it "routes to #create" do
      post("/institute_members").should route_to("institute_members#create")
    end

    it "routes to #update" do
      put("/institute_members/1").should route_to("institute_members#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/institute_members/1").should route_to("institute_members#destroy", :id => "1")
    end

  end
end
