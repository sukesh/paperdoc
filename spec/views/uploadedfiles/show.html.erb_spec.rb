require 'spec_helper'

describe "uploadedfiles/show.html.erb" do
  before(:each) do
    @uploadedfile = assign(:uploadedfile, stub_model(Uploadedfile,
      :name => "Name",
      :user_id => 1,
      :activity_id => 1,
      :time => "Time",
      :permission => "Permission"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Time/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Permission/)
  end
end
