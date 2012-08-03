require 'spec_helper'

describe "user_lineups/edit" do
  before(:each) do
    @user_lineup = assign(:user_lineup, stub_model(UserLineup,
      :user_id => 1,
      :lineup_id => 1
    ))
  end

  it "renders the edit user_lineup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_lineups_path(@user_lineup), :method => "post" do
      assert_select "input#user_lineup_user_id", :name => "user_lineup[user_id]"
      assert_select "input#user_lineup_lineup_id", :name => "user_lineup[lineup_id]"
    end
  end
end
