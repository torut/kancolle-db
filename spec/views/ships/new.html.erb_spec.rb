require 'spec_helper'

describe "ships/new" do
  before(:each) do
    assign(:ship, stub_model(Ship,
      :name => "MyString",
      :ship_class => "MyString",
      :ship_number => 1,
      :ship_type => "MyString",
      :number => 1,
      :stamina => 1,
      :firepower => 1,
      :cuirass => 1,
      :torpedo => 1,
      :avoidance => 1,
      :antiair => 1,
      :aircapacity => 1,
      :antisubmarine => 1,
      :speed => "MyString",
      :scouting => 1,
      :range => "MyString",
      :luck => 1,
      :renovation_level => 1,
      :rare => 1,
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new ship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ships_path, "post" do
      assert_select "input#ship_name[name=?]", "ship[name]"
      assert_select "input#ship_ship_class[name=?]", "ship[ship_class]"
      assert_select "input#ship_ship_number[name=?]", "ship[ship_number]"
      assert_select "input#ship_ship_type[name=?]", "ship[ship_type]"
      assert_select "input#ship_number[name=?]", "ship[number]"
      assert_select "input#ship_stamina[name=?]", "ship[stamina]"
      assert_select "input#ship_firepower[name=?]", "ship[firepower]"
      assert_select "input#ship_cuirass[name=?]", "ship[cuirass]"
      assert_select "input#ship_torpedo[name=?]", "ship[torpedo]"
      assert_select "input#ship_avoidance[name=?]", "ship[avoidance]"
      assert_select "input#ship_antiair[name=?]", "ship[antiair]"
      assert_select "input#ship_aircapacity[name=?]", "ship[aircapacity]"
      assert_select "input#ship_antisubmarine[name=?]", "ship[antisubmarine]"
      assert_select "input#ship_speed[name=?]", "ship[speed]"
      assert_select "input#ship_scouting[name=?]", "ship[scouting]"
      assert_select "input#ship_range[name=?]", "ship[range]"
      assert_select "input#ship_luck[name=?]", "ship[luck]"
      assert_select "input#ship_renovation_level[name=?]", "ship[renovation_level]"
      assert_select "input#ship_rare[name=?]", "ship[rare]"
      assert_select "textarea#ship_note[name=?]", "ship[note]"
    end
  end
end
