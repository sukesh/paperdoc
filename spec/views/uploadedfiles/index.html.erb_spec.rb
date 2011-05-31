require 'spec_helper'

describe "uploadedfiles/index.html.erb" do
  before(:each) do
    assign(:uploadedfiles, [
      stub_model(Uploadedfile,
        :name => "Name",
        :user_id => 1,
        :activity_id => 1,
        :time => "Time",
        :permission => "Permission"
      ),
      stub_model(Uploadedfile,
        :name => "Name",
        :user_id => 1,
        :activity_id => 1,
        :time => "Time",
        :permission => "Permission"
      )
    ])
  end

  it "renders a list of uploadedfiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Permission".to_s, :count => 2
  end
end
