require 'spec_helper'

describe "updates/new.html.erb" do
  before(:each) do
    assign(:update, stub_model(Update,
      :message => "MyText",
      :user_id => 1,
      :activity_id => 1,
      :type => "MyString",
      :time => "MyString"
    ).as_new_record)
  end

  it "renders new update form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => updates_path, :method => "post" do
      assert_select "textarea#update_message", :name => "update[message]"
      assert_select "input#update_user_id", :name => "update[user_id]"
      assert_select "input#update_activity_id", :name => "update[activity_id]"
      assert_select "input#update_type", :name => "update[type]"
      assert_select "input#update_time", :name => "update[time]"
    end
  end
end
