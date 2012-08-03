require 'spec_helper'

describe "practices/show" do
  before(:each) do
    @practice = assign(:practice, stub_model(Practice,
      :name => "Name",
      :workout_type_id => 1,
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Location/)
  end
end
