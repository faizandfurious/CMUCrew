require 'spec_helper'

describe "practice_lineups/index" do
  before(:each) do
    assign(:practice_lineups, [
      stub_model(PracticeLineup,
        :practice_id => 1,
        :lineup_id => 2
      ),
      stub_model(PracticeLineup,
        :practice_id => 1,
        :lineup_id => 2
      )
    ])
  end

  it "renders a list of practice_lineups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
