# -*- coding: utf-8 -*-
require 'open-uri'
require 'nokogiri'

class Tasks::ImportEquipment

  def self.execute
    url = 'http://wikiwiki.jp/kancolle/?%C1%F5%C8%F7'

    charset = ''
    html = open(url);

    doc = Nokogiri::HTML(html)
    doc.css('div#body div.ie5 table.style_table tr').each do |tr|
      next if tr.children[0].content == 'No.' || tr.children[0].content == 'No'
      next if tr.children[2].content.blank?

      equipment = Equipment.new
      tr.children.each_with_index do |td, i|
        val = td.content
        style = td['style']
        col = nil
        case i
        when 0
          col = 'number'
        when 1
          col = 'rare'
          val = val.count('☆')
        when 2
          col = 'name'
        when 3
          col = 'equip_type'
        when 4
          col = 'firepower'
        when 5
          col = 'torpedo'
        when 6
          col = 'bomb'
        when 7
          col = 'antiair'
        when 8
          col = 'antisubmarine'
        when 9
          col = 'scouting'
        when 10
          col = 'hit'
        when 11
          col = 'range'
          case val
          when '超長'
            val = 4
          when '長'
            val = 3
          when '中'
            val = 2
          when '短'
            val = 1
          else
            val = nil
          end
        when 12
          # destroyer
          col = 'can_destroyer'
          val = style.match(/background\-color:#ccc/).nil? ? true : false
        when 13
          # light_cruiser
          col = 'can_light_cruiser'
          val = style.match(/background\-color:#ccc/).nil? ? true : false
        when 14
          # heavy_cruiser
          col = 'can_heavy_cruiser'
          val = style.match(/background\-color:#ccc/).nil? ? true : false
        when 15
          # battleship
          col = 'can_battleship'
          val = style.match(/background\-color:#ccc/).nil? ? true : false
        when 16
          # light_air_carrier
          col = 'can_light_air_carrier'
          val = style.match(/background\-color:#ccc/).nil? ? true : false
        when 17
          # air_carrier
          col = 'can_air_carrier'
          val = style.match(/background\-color:#ccc/).nil? ? true : false
        when 18
          # seaplane_carrier
          col = 'can_seaplane_carrier'
          val = style.match(/background\-color:#ccc/).nil? ? true : false
        when 19
          # air_battleship
          col = 'can_air_battleship'
          val = style.match(/background\-color:#ccc/).nil? ? true : false
        when 20
          col = 'note'
        end

        equipment[col] = val if !col.nil?
      end

      equipment.save

    end

  end
end

