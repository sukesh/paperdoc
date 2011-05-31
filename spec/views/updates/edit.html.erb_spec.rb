require 'spec_helper'

describe "updates/edit.html.erb" do
  before(:each) do
    @update = assign(:update, stub_model(Update,
      :message => "MyText",
      :user_id => 1,
      :activity_id => 1,
      :type => "MyString",
      :time => "MyString"
    ))
  end

  it "renders the edit update form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => updates_path(@update), :method => "post" do
      assert_select "textarea#update_message", :name => "update[message]"
      assert_select "input#update_user_id", :name => "update[user_id]"
      assert_select "input#update_activity_id", :name => "update[activity_id]"
      assert_select "input#update_type", :name => "update[type]"
      assert_select "input#update_time", :name => "update[time]"
    end
  end
end
