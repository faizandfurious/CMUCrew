require 'spec_helper'

describe "practices/index" do
  before(:each) do
    assign(:practices, [
      stub_model(Practice,
        :name => "Name",
        :workout_type_id => 1,
        :location => "Location"
      ),
      stub_model(Practice,
        :name => "Name",
        :workout_type_id => 1,
        :location => "Location"
      )
    ])
  end

  it "renders a list of practices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
