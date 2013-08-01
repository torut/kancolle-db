# -*- coding: utf-8 -*-
require 'uri'
require 'open-uri'
require 'nokogiri'

class Tasks::ImportShipEquipmentSlots

  def self.execute
    url = 'http://wikiwiki.jp/kancolle/?'

    Ship.all.each do |ship|
      detail_url = url + URI.encode(ship.name.encode('EUC-JP'))
      html = open(detail_url) do |page|
        page.read
      end

      doc = Nokogiri::HTML(html)
      slots = 0
      with_capacity = 0

      doc.css('div#body div.ie5 table.style_table tr').each_with_index do |tr, i|
        if i >= 10 && i <= 13
          if tr.children[0].content != '装備不可'
            slots = slots + 1
          end
        end
      end

      ship.equipment_slots = slots
      ship.save
    end

  end

end

