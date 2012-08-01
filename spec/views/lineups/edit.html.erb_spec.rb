require 'spec_helper'

describe "lineups/edit" do
  before(:each) do
    @lineup = assign(:lineup, stub_model(Lineup,
      :boat_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit lineup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lineups_path(@lineup), :method => "post" do
      assert_select "input#lineup_boat_id", :name => "lineup[boat_id]"
      assert_select "input#lineup_name", :name => "lineup[name]"
    end
  end
end
