class Equipment < ActiveRecord::Base
  attr_accessible :antiair, :antisubmatine, :bomb, :can_air_carrier, :can_ari_cruiser, :can_battleship, :can_destroyer, :can_heavy_cruiser, :can_light_air_carrier, :can_light_cruiser, :can_seeplane_carrier, :firepower, :hit, :name, :note, :number, :range, :rare, :scouting, :torpedo, :type
end
