# -*- coding: utf-8 -*-
class Ship < ActiveRecord::Base
  attr_accessible :aircapacity, :antiair, :antisubmarine, :avoidance, :cuirass, :firepower, :luck, :name, :note, :number, :range, :rare, :renovation_level, :scouting, :ship_class, :ship_type, :speed, :stamina, :torpedo, :synthesis_firepower, :synthesis_torpedo, :synthesis_antiair, :synthesis_cuirass, :equipment_slots

  validates_presence_of :name, :number, :ship_class, :ship_type, :rare

  def speed_value
    case speed
    when 1
      '低速'
    when 2
      '高速'
    end
  end

  def range_value
    case range
    when 1
      '短'
    when 2
      '中'
    when 3
      '長'
    end
  end

  def rare_value
    case rare
    when 1
      '羽4枚、青背景'
    when 2
      '羽6枚、銀背景'
    when 3
      '羽6枚、金背景'
    when 4
      '羽8枚、ホログラム背景'
    when 5
      '羽16枚、ホログラム背景'
    else
      '-'
    end
  end

end
