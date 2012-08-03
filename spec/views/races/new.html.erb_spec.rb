require 'spec_helper'

describe "races/new" do
  before(:each) do
    assign(:race, stub_model(Race,
      :name => "MyString",
      :location => "MyText"
    ).as_new_record)
  end

  it "renders new race form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => races_path, :method => "post" do
      assert_select "input#race_name", :name => "race[name]"
      assert_select "textarea#race_location", :name => "race[location]"
    end
  end
end
