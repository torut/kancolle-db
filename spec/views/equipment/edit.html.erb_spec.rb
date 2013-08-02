require 'spec_helper'

describe "equipment/edit" do
  before(:each) do
    @equipment = assign(:equipment, stub_model(Equipment,
      :name => "MyString",
      :type => "",
      :number => "MyString",
      :firepower => 1,
      :torpedo => 1,
      :bomb => 1,
      :antiair => 1,
      :antisubmatine => 1,
      :scouting => 1,
      :hit => 1,
      :range => 1,
      :can_destroyer => false,
      :can_light_cruiser => false,
      :can_heavy_cruiser => false,
      :can_battleship => false,
      :can_light_air_carrier => false,
      :can_air_carrier => false,
      :can_seeplane_carrier => false,
      :can_ari_cruiser => false,
      :rare => 1,
      :note => "MyText"
    ))
  end

  it "renders the edit equipment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", equipment_path(@equipment), "post" do
      assert_select "input#equipment_name[name=?]", "equipment[name]"
      assert_select "input#equipment_type[name=?]", "equipment[type]"
      assert_select "input#equipment_number[name=?]", "equipment[number]"
      assert_select "input#equipment_firepower[name=?]", "equipment[firepower]"
      assert_select "input#equipment_torpedo[name=?]", "equipment[torpedo]"
      assert_select "input#equipment_bomb[name=?]", "equipment[bomb]"
      assert_select "input#equipment_antiair[name=?]", "equipment[antiair]"
      assert_select "input#equipment_antisubmatine[name=?]", "equipment[antisubmatine]"
      assert_select "input#equipment_scouting[name=?]", "equipment[scouting]"
      assert_select "input#equipment_hit[name=?]", "equipment[hit]"
      assert_select "input#equipment_range[name=?]", "equipment[range]"
      assert_select "input#equipment_can_destroyer[name=?]", "equipment[can_destroyer]"
      assert_select "input#equipment_can_light_cruiser[name=?]", "equipment[can_light_cruiser]"
      assert_select "input#equipment_can_heavy_cruiser[name=?]", "equipment[can_heavy_cruiser]"
      assert_select "input#equipment_can_battleship[name=?]", "equipment[can_battleship]"
      assert_select "input#equipment_can_light_air_carrier[name=?]", "equipment[can_light_air_carrier]"
      assert_select "input#equipment_can_air_carrier[name=?]", "equipment[can_air_carrier]"
      assert_select "input#equipment_can_seeplane_carrier[name=?]", "equipment[can_seeplane_carrier]"
      assert_select "input#equipment_can_ari_cruiser[name=?]", "equipment[can_ari_cruiser]"
      assert_select "input#equipment_rare[name=?]", "equipment[rare]"
      assert_select "textarea#equipment_note[name=?]", "equipment[note]"
    end
  end
end
