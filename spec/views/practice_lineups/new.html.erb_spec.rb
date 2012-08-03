require 'spec_helper'

describe "practice_lineups/new" do
  before(:each) do
    assign(:practice_lineup, stub_model(PracticeLineup,
      :practice_id => 1,
      :lineup_id => 1
    ).as_new_record)
  end

  it "renders new practice_lineup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => practice_lineups_path, :method => "post" do
      assert_select "input#practice_lineup_practice_id", :name => "practice_lineup[practice_id]"
      assert_select "input#practice_lineup_lineup_id", :name => "practice_lineup[lineup_id]"
    end
  end
end
