require 'spec_helper'

describe "updates/show.html.erb" do
  before(:each) do
    @update = assign(:update, stub_model(Update,
      :message => "MyText",
      :user_id => 1,
      :activity_id => 1,
      :type => "Type",
      :time => "Time"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
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
