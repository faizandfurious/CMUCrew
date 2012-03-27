require 'spec_helper'

describe "rowers/index" do
  before(:each) do
    assign(:rowers, [
      stub_model(Rower,
        :first_name => "First Name",
        :last_name => "Last Name",
        :weight => 1,
        :height => 2,
        :rowing_side => "Rowing Side",
        :email => "Email",
        :phone => "Phone",
        :year => "Year",
        :major => "Major"
      ),
      stub_model(Rower,
        :first_name => "First Name",
        :last_name => "Last Name",
        :weight => 1,
        :height => 2,
        :rowing_side => "Rowing Side",
        :email => "Email",
        :phone => "Phone",
        :year => "Year",
        :major => "Major"
      )
    ])
  end

  it "renders a list of rowers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Rowing Side".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Major".to_s, :count => 2
  end
end
