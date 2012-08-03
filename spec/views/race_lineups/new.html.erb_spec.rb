require 'spec_helper'

describe "race_lineups/new" do
  before(:each) do
    assign(:race_lineup, stub_model(RaceLineup,
      :race_id => 1,
      :lineup_id => 1
    ).as_new_record)
  end

  it "renders new race_lineup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => race_lineups_path, :method => "post" do
      assert_select "input#race_lineup_race_id", :name => "race_lineup[race_id]"
      assert_select "input#race_lineup_lineup_id", :name => "race_lineup[lineup_id]"
    end
  end
end
