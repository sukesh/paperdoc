require 'spec_helper'

describe "activity_participants/new.html.erb" do
  before(:each) do
    assign(:activity_participant, stub_model(ActivityParticipant,
      :activity_id => 1,
      :user_id => 1,
      :type => "MyString",
      :time => "MyString"
    ).as_new_record)
  end

  it "renders new activity_participant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activity_participants_path, :method => "post" do
      assert_select "input#activity_participant_activity_id", :name => "activity_participant[activity_id]"
      assert_select "input#activity_participant_user_id", :name => "activity_participant[user_id]"
      assert_select "input#activity_participant_type", :name => "activity_participant[type]"
      assert_select "input#activity_participant_time", :name => "activity_participant[time]"
    end
  end
end
