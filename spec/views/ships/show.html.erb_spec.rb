require 'spec_helper'

describe "ships/show" do
  before(:each) do
    @ship = assign(:ship, stub_model(Ship,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Ship Class/)
    rendered.should match(/1/)
    rendered.should match(/Ship Type/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
    rendered.should match(/10/)
    rendered.should match(/Speed/)
    rendered.should match(/11/)
    rendered.should match(/Range/)
    rendered.should match(/12/)
    rendered.should match(/13/)
    rendered.should match(/14/)
    rendered.should match(/MyText/)
  end
end
