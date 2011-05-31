require 'spec_helper'

describe "uploadedfiles/new.html.erb" do
  before(:each) do
    assign(:uploadedfile, stub_model(Uploadedfile,
      :name => "MyString",
      :user_id => 1,
      :activity_id => 1,
      :time => "MyString",
      :permission => "MyString"
    ).as_new_record)
  end

  it "renders new uploadedfile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => uploadedfiles_path, :method => "post" do
      assert_select "input#uploadedfile_name", :name => "uploadedfile[name]"
      assert_select "input#uploadedfile_user_id", :name => "uploadedfile[user_id]"
      assert_select "input#uploadedfile_activity_id", :name => "uploadedfile[activity_id]"
      assert_select "input#uploadedfile_time", :name => "uploadedfile[time]"
      assert_select "input#uploadedfile_permission", :name => "uploadedfile[permission]"
    end
  end
end
