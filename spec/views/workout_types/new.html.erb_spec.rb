require 'spec_helper'

describe "workout_types/new" do
  before(:each) do
    assign(:workout_type, stub_model(WorkoutType,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new workout_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => workout_types_path, :method => "post" do
      assert_select "input#workout_type_name", :name => "workout_type[name]"
      assert_select "textarea#workout_type_description", :name => "workout_type[description]"
    end
  end
end
