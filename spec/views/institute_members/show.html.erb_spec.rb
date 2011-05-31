require 'spec_helper'

describe "institute_members/show.html.erb" do
  before(:each) do
    @institute_member = assign(:institute_member, stub_model(InstituteMember,
      :institute_id => 1,
      :user_id => 1,
      :official_identification => "Official Identification",
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
    rendered.should match(/Official Identification/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Time/)
  end
end
