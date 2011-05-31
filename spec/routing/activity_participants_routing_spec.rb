require "spec_helper"

describe ActivityParticipantsController do
  describe "routing" do

    it "routes to #index" do
      get("/activity_participants").should route_to("activity_participants#index")
    end

    it "routes to #new" do
      get("/activity_participants/new").should route_to("activity_participants#new")
    end

    it "routes to #show" do
      get("/activity_participants/1").should route_to("activity_participants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/activity_participants/1/edit").should route_to("activity_participants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/activity_participants").should route_to("activity_participants#create")
    end

    it "routes to #update" do
      put("/activity_participants/1").should route_to("activity_participants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/activity_participants/1").should route_to("activity_participants#destroy", :id => "1")
    end

  end
end
