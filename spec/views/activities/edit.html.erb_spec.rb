require 'spec_helper'

describe "activities/edit.html.erb" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :name => "MyString",
      :type => "MyString",
      :user_id => 1,
      :institute_id => 1,
      :details => "MyText",
      :image_url => "MyString"
    ))
  end

  it "renders the edit activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activities_path(@activity), :method => "post" do
      assert_select "input#activity_name", :name => "activity[name]"
      assert_select "input#activity_type", :name => "activity[type]"
      assert_select "input#activity_user_id", :name => "activity[user_id]"
      assert_select "input#activity_institute_id", :name => "activity[institute_id]"
      assert_select "textarea#activity_details", :name => "activity[details]"
      assert_select "input#activity_image_url", :name => "activity[image_url]"
    end
  end
end
