require 'spec_helper'

describe "institute_members/new.html.erb" do
  before(:each) do
    assign(:institute_member, stub_model(InstituteMember,
      :institute_id => 1,
      :user_id => 1,
      :official_identification => "MyString",
      :time => "MyString"
    ).as_new_record)
  end

  it "renders new institute_member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => institute_members_path, :method => "post" do
      assert_select "input#institute_member_institute_id", :name => "institute_member[institute_id]"
      assert_select "input#institute_member_user_id", :name => "institute_member[user_id]"
      assert_select "input#institute_member_official_identification", :name => "institute_member[official_identification]"
      assert_select "input#institute_member_time", :name => "institute_member[time]"
    end
  end
end
