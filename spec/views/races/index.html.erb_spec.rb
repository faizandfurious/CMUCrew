require 'spec_helper'

describe "races/index" do
  before(:each) do
    assign(:races, [
      stub_model(Race,
        :name => "Name",
        :location => "MyText"
      ),
      stub_model(Race,
        :name => "Name",
        :location => "MyText"
      )
    ])
  end

  it "renders a list of races" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
