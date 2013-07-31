# -*- coding: utf-8 -*-
require 'open-uri'
require 'nokogiri'

class Tasks::ImportSynthesis

  def self.execute
    url = 'http://wikiwiki.jp/kancolle/?%B6%E1%C2%E5%B2%BD%B2%FE%BD%A4%2F%A5%C6%A1%BC%A5%D6%A5%EB'

    charset = ''
    html = open(url) do |page|
      charset = page.charset
      page.read
    end

    doc = Nokogiri::HTML(html)
    doc.css('div#body div.ie5 table.style_table tr').each do |tr|
      next if tr.children[0].content == 'No.'

      ship = Ship.find(:first, :conditions => {:number => tr.children[0].content.to_i})
      next if !ship

      tr.children.each_with_index do |td, i|
        val = td.content
        next if val == '-' || val.empty?

        col = nil
        case i
        when 3
          col = 'synthesis_firepower'
        when 4
          col = 'synthesis_torpedo'
        when 5
          col = 'synthesis_antiair'
        when 6
          col = 'synthesis_cuirass'
        end

        ship[col] = val if !col.nil?
      end

      ship.save

    end


  end

end

