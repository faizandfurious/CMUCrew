require 'spec_helper'

describe "practices/edit" do
  before(:each) do
    @practice = assign(:practice, stub_model(Practice,
      :name => "MyString",
      :workout_type_id => 1,
      :location => "MyString"
    ))
  end

  it "renders the edit practice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => practices_path(@practice), :method => "post" do
      assert_select "input#practice_name", :name => "practice[name]"
      assert_select "input#practice_workout_type_id", :name => "practice[workout_type_id]"
      assert_select "input#practice_location", :name => "practice[location]"
    end
  end
end
