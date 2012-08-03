require 'spec_helper'

describe "boats/index" do
  before(:each) do
    assign(:boats, [
      stub_model(Boat,
        :name => "Name",
        :boat_type_id => "Boat Type",
        :color => "Color",
        :model => "Model"
      ),
      stub_model(Boat,
        :name => "Name",
        :boat_type_id => "Boat Type",
        :color => "Color",
        :model => "Model"
      )
    ])
  end

  it "renders a list of boats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Boat Type".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
  end
end
