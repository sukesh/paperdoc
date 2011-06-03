require 'spec_helper'

describe PagesController do
 render_views
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_successful
    end
    it "should have the right title" do
       get 'home'
       response.should have_selector("title",
                                              :content=>"Home")
   end
  end
  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_successful
    end
     it "should have the right title" do
       get 'contact'
       response.should have_selector("title",
                                              :content=>"Contact")
   end
  end
  describe "GET 'about us'" do
    it "should be successful" do
      get 'aboutus'
      response.should be_successful
    end
     it "should have the right title" do
       get 'aboutus'
       response.should have_selector("title",
                                              :content=>"About Us")
   end
  end

end
