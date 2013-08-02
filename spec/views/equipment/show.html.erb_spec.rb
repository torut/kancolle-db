require 'spec_helper'

describe "equipment/show" do
  before(:each) do
    @equipment = assign(:equipment, stub_model(Equipment,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Type/)
    rendered.should match(/Number/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/9/)
    rendered.should match(/MyText/)
  end
end
