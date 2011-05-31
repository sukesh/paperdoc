require "spec_helper"

describe UploadedfilesController do
  describe "routing" do

    it "routes to #index" do
      get("/uploadedfiles").should route_to("uploadedfiles#index")
    end

    it "routes to #new" do
      get("/uploadedfiles/new").should route_to("uploadedfiles#new")
    end

    it "routes to #show" do
      get("/uploadedfiles/1").should route_to("uploadedfiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/uploadedfiles/1/edit").should route_to("uploadedfiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/uploadedfiles").should route_to("uploadedfiles#create")
    end

    it "routes to #update" do
      put("/uploadedfiles/1").should route_to("uploadedfiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/uploadedfiles/1").should route_to("uploadedfiles#destroy", :id => "1")
    end

  end
end
