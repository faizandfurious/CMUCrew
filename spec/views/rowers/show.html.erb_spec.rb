require 'spec_helper'

describe "rowers/show" do
  before(:each) do
    @rower = assign(:rower, stub_model(Rower,
      :first_name => "First Name",
      :last_name => "Last Name",
      :weight => 1,
      :height => 2,
      :rowing_side => "Rowing Side",
      :email => "Email",
      :phone => "Phone",
      :year => "Year",
      :major => "Major"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Rowing Side/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/Year/)
    rendered.should match(/Major/)
  end
end
