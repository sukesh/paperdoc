require 'spec_helper'

describe "uploadedfiles/edit.html.erb" do
  before(:each) do
    @uploadedfile = assign(:uploadedfile, stub_model(Uploadedfile,
      :name => "MyString",
      :user_id => 1,
      :activity_id => 1,
      :time => "MyString",
      :permission => "MyString"
    ))
  end

  it "renders the edit uploadedfile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => uploadedfiles_path(@uploadedfile), :method => "post" do
      assert_select "input#uploadedfile_name", :name => "uploadedfile[name]"
      assert_select "input#uploadedfile_user_id", :name => "uploadedfile[user_id]"
      assert_select "input#uploadedfile_activity_id", :name => "uploadedfile[activity_id]"
      assert_select "input#uploadedfile_time", :name => "uploadedfile[time]"
      assert_select "input#uploadedfile_permission", :name => "uploadedfile[permission]"
    end
  end
end
