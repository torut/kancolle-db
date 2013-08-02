require 'spec_helper'

describe "equipment/index" do
  before(:each) do
    assign(:equipment, [
      stub_model(Equipment,
        :name => "Name",
        :type => "Type",
        :number => "Number",
        :firepower => 1,
        :torpedo => 2,
        :bomb => 3,
        :antiair => 4,
        :antisubmatine => 5,
        :scouting => 6,
        :hit => 7,
        :range => 8,
        :can_destroyer => false,
        :can_light_cruiser => false,
        :can_heavy_cruiser => false,
        :can_battleship => false,
        :can_light_air_carrier => false,
        :can_air_carrier => false,
        :can_seeplane_carrier => false,
        :can_ari_cruiser => false,
        :rare => 9,
        :note => "MyText"
      ),
      stub_model(Equipment,
        :name => "Name",
        :type => "Type",
        :number => "Number",
        :firepower => 1,
        :torpedo => 2,
        :bomb => 3,
        :antiair => 4,
        :antisubmatine => 5,
        :scouting => 6,
        :hit => 7,
        :range => 8,
        :can_destroyer => false,
        :can_light_cruiser => false,
        :can_heavy_cruiser => false,
        :can_battleship => false,
        :can_light_air_carrier => false,
        :can_air_carrier => false,
        :can_seeplane_carrier => false,
        :can_ari_cruiser => false,
        :rare => 9,
        :note => "MyText"
      )
    ])
  end

  it "renders a list of equipment" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
