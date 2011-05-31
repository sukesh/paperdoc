require 'spec_helper'

describe "InstituteMembers" do
  describe "GET /institute_members" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get institute_members_path
      response.status.should be(200)
    end
  end
end
