module ApplicationHelper

  def add_symbol(num, alternate = '')
    return alternate if num.nil?

    sprintf('%+d', num)
  end

  def sortable(title, sort_key, current_sort_key, direction)
    direct = current_sort_key == sort_key ? (direction == 'asc' ? 'desc' : 'asc') : 'asc'
    output = link_to title, :sort => sort_key, :direction => direct
    output += add_icon(current_sort_key, sort_key, direction).html_safe
  end

  private
  def add_icon(current_sort_key, sort_key, direction)
    if current_sort_key == sort_key
      direction = ('arrow-' + (direction == 'desc' ? 'down' : 'up'))
      return glyph(direction)
    else
      return ''
    end
  end
end
