require 'spec_helper'

describe "institute_members/index.html.erb" do
  before(:each) do
    assign(:institute_members, [
      stub_model(InstituteMember,
        :institute_id => 1,
        :user_id => 1,
        :official_identification => "Official Identification",
        :time => "Time"
      ),
      stub_model(InstituteMember,
        :institute_id => 1,
        :user_id => 1,
        :official_identification => "Official Identification",
        :time => "Time"
      )
    ])
  end

  it "renders a list of institute_members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Official Identification".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Time".to_s, :count => 2
  end
end
