require 'spec_helper'

describe "practice_lineups/show" do
  before(:each) do
    @practice_lineup = assign(:practice_lineup, stub_model(PracticeLineup,
      :practice_id => 1,
      :lineup_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
