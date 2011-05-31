require 'spec_helper'

describe "activities/index.html.erb" do
  before(:each) do
    assign(:activities, [
      stub_model(Activity,
        :name => "Name",
        :type => "Type",
        :user_id => 1,
        :institute_id => 1,
        :details => "MyText",
        :image_url => "Image Url"
      ),
      stub_model(Activity,
        :name => "Name",
        :type => "Type",
        :user_id => 1,
        :institute_id => 1,
        :details => "MyText",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of activities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end
