# -*- coding: utf-8 -*-
require 'open-uri'
require 'nokogiri'

class Tasks::ImportShip

  def self.execute
    p __FILE__

    url = 'http://wikiwiki.jp/kancolle/?%B4%CF%C1%A5'

    charset = ''
    html = open(url) do |page|
      charset = page.charset
      page.read
    end

    doc = Nokogiri::HTML(html)
    doc.css('div#body div.ie5 table.style_table tr').each do |tr|
      next if tr.children[0].content == 'No.'

      ship = Ship.new
      tr.children.each_with_index do |td, i|
        val = td.content
        col = nil
        case i
        when 0
          col = 'number'
        when 1
          col = 'rare'
        when 2
          col = 'name'
        when 3
          col = 'ship_class'
        when 4
          col = 'ship_number'
          val = val.gsub(/([^\d].+)(\d+)番艦/, '\2')
        when 5
          col = 'ship_type'
        when 6
          col = 'stamina'
        when 7
          col = 'firepower'
        when 8
          col = 'cuirass'
        when 9
          col = 'torpedo'
        when 10
          col = 'avoidance'
        when 11
          col = 'antiair'
        when 12
          col = 'aircapacity'
        when 13
          col = 'antisubmarine'
        when 14
          col = 'speed'
          case val
          when '低'
            val = '低速'
          when '高'
            val = '高速'
          end
        when 15
          col = 'scouting'
        when 16
          col = 'range'
        when 17
          col = 'luck'
        when 18
          col = 'renovation_level'
        when 19
          col = 'note'
        end

        ship[col] = val if !col.nil?
      end

      ship.save

    end


  end

end

