require 'spec_helper'

describe "rowers/edit" do
  before(:each) do
    @rower = assign(:rower, stub_model(Rower,
      :first_name => "MyString",
      :last_name => "MyString",
      :weight => 1,
      :height => 1,
      :rowing_side => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :year => "MyString",
      :major => "MyString"
    ))
  end

  it "renders the edit rower form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rowers_path(@rower), :method => "post" do
      assert_select "input#rower_first_name", :name => "rower[first_name]"
      assert_select "input#rower_last_name", :name => "rower[last_name]"
      assert_select "input#rower_weight", :name => "rower[weight]"
      assert_select "input#rower_height", :name => "rower[height]"
      assert_select "input#rower_rowing_side", :name => "rower[rowing_side]"
      assert_select "input#rower_email", :name => "rower[email]"
      assert_select "input#rower_phone", :name => "rower[phone]"
      assert_select "input#rower_year", :name => "rower[year]"
      assert_select "input#rower_major", :name => "rower[major]"
    end
  end
end
