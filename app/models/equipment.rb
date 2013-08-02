# -*- coding: utf-8 -*-
class Equipment < ActiveRecord::Base
  attr_accessible :antiair, :antisubmarine, :bomb, :can_air_carrier, :can_air_battleship, :can_battleship, :can_destroyer, :can_heavy_cruiser, :can_light_air_carrier, :can_light_cruiser, :can_seaplane_carrier, :firepower, :hit, :name, :note, :number, :range, :rare, :scouting, :torpedo, :equip_type

  def range_value
    case range
    when 1
      '短'
    when 2
      '中'
    when 3
      '長'
    when 4
      '超長'
    end
  end

  def can_equip_ship_types
    types = []

    types.push '駆逐艦' if can_destroyer
    types.push '軽巡洋艦' if can_light_cruiser
    types.push '重巡洋艦' if can_heavy_cruiser
    types.push '戦艦' if can_battleship
    types.push '軽空母' if can_light_air_carrier
    types.push '正規空母' if can_air_carrier
    types.push '水上機母艦' if can_seaplane_carrier
    types.push '航空戦艦' if can_air_battleship

    types.join(', ')
  end
end
