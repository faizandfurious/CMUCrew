require 'spec_helper'

describe "user_lineups/show" do
  before(:each) do
    @user_lineup = assign(:user_lineup, stub_model(UserLineup,
      :user_id => 1,
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
