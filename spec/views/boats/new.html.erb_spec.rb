require 'spec_helper'

describe "boats/new" do
  before(:each) do
    assign(:boat, stub_model(Boat,
      :name => "MyString",
      :boat_type_id => "MyString",
      :color => "MyString",
      :model => "MyString"
    ).as_new_record)
  end

  it "renders new boat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boats_path, :method => "post" do
      assert_select "input#boat_name", :name => "boat[name]"
      assert_select "input#boat_boat_type_id", :name => "boat[boat_type_id]"
      assert_select "input#boat_color", :name => "boat[color]"
      assert_select "input#boat_model", :name => "boat[model]"
    end
  end
end
