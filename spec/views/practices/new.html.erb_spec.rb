require 'spec_helper'

describe "practices/new" do
  before(:each) do
    assign(:practice, stub_model(Practice,
      :name => "MyString",
      :workout_type_id => 1,
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new practice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => practices_path, :method => "post" do
      assert_select "input#practice_name", :name => "practice[name]"
      assert_select "input#practice_workout_type_id", :name => "practice[workout_type_id]"
      assert_select "input#practice_location", :name => "practice[location]"
    end
  end
end
