require 'spec_helper'

describe "races/show" do
  before(:each) do
    @race = assign(:race, stub_model(Race,
      :name => "Name",
      :location => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
