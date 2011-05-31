require 'spec_helper'

describe "updates/index.html.erb" do
  before(:each) do
    assign(:updates, [
      stub_model(Update,
        :message => "MyText",
        :user_id => 1,
        :activity_id => 1,
        :type => "Type",
        :time => "Time"
      ),
      stub_model(Update,
        :message => "MyText",
        :user_id => 1,
        :activity_id => 1,
        :type => "Type",
        :time => "Time"
      )
    ])
  end

  it "renders a list of updates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
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
