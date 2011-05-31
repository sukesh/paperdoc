require 'spec_helper'

describe "activity_participants/index.html.erb" do
  before(:each) do
    assign(:activity_participants, [
      stub_model(ActivityParticipant,
        :activity_id => 1,
        :user_id => 1,
        :type => "Type",
        :time => "Time"
      ),
      stub_model(ActivityParticipant,
        :activity_id => 1,
        :user_id => 1,
        :type => "Type",
        :time => "Time"
      )
    ])
  end

  it "renders a list of activity_participants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Time".to_s, :count => 2
  end
end
