require 'spec_helper'

describe "activity_participants/show.html.erb" do
  before(:each) do
    @activity_participant = assign(:activity_participant, stub_model(ActivityParticipant,
      :activity_id => 1,
      :user_id => 1,
      :type => "Type",
      :time => "Time"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Time/)
  end
end
