require 'spec_helper'

describe "ships/index" do
  before(:each) do
    assign(:ships, [
      stub_model(Ship,
        :name => "Name",
        :ship_class => "Ship Class",
        :ship_number => 1,
        :ship_type => "Ship Type",
        :number => 2,
        :stamina => 3,
        :firepower => 4,
        :cuirass => 5,
        :torpedo => 6,
        :avoidance => 7,
        :antiair => 8,
        :aircapacity => 9,
        :antisubmarine => 10,
        :speed => "Speed",
        :scouting => 11,
        :range => "Range",
        :luck => 12,
        :renovation_level => 13,
        :rare => 14,
        :note => "MyText"
      ),
      stub_model(Ship,
        :name => "Name",
        :ship_class => "Ship Class",
        :ship_number => 1,
        :ship_type => "Ship Type",
        :number => 2,
        :stamina => 3,
        :firepower => 4,
        :cuirass => 5,
        :torpedo => 6,
        :avoidance => 7,
        :antiair => 8,
        :aircapacity => 9,
        :antisubmarine => 10,
        :speed => "Speed",
        :scouting => 11,
        :range => "Range",
        :luck => 12,
        :renovation_level => 13,
        :rare => 14,
        :note => "MyText"
      )
    ])
  end

  it "renders a list of ships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ship Class".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Ship Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => "Speed".to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => "Range".to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
