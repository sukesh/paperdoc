require 'spec_helper'

describe AutocompleteSearchesController do

  describe "GET 'Index'" do
     before(:each) do
    @institute = Institute.new(:name=>"National Institute")
    end

    it "should be successful" do
      get 'Index'
      response.should be_success
    end
    it "should not be blank" do
      @institute.name.should_not be_blank
   end
   it "name should be valid" do
    Institute.find_by_name("Example Name").should be_valid
   end
  end

end
