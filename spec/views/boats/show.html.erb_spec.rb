require 'spec_helper'

describe "boats/show" do
  before(:each) do
    @boat = assign(:boat, stub_model(Boat,
      :name => "Name",
      :boat_type_id => "Boat Type",
      :color => "Color",
      :model => "Model"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Boat Type/)
    rendered.should match(/Color/)
    rendered.should match(/Model/)
  end
end
