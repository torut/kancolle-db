module FavoriteHelper

  def add_favorite_icon(ship_id)
    return '' unless output = session[:user_id]

    if current_user.favorited(ship_id)
      output = link_to glyph(:star), '/favorite/' + ship_id.to_s + '/remove', :class => 'remote_post', :data => {:mode => 'remove'}
    else
      output = link_to glyph(:star_empty), '/favorite/' + ship_id.to_s + '/add', :class => 'remote_post', :data => {:mode => 'add'}
    end
  end

end
