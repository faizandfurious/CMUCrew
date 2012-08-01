require 'spec_helper'

describe "workout_types/show" do
  before(:each) do
    @workout_type = assign(:workout_type, stub_model(WorkoutType,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
