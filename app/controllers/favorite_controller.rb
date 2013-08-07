class FavoriteController < ApplicationController
  before_filter :authenticate

  def index
    @favorites = current_user.favorites

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @favorites }
    end
  end

  def add
    @favorite = Favorite.new
    @favorite.user_id = current_user.id
    @favorite.ship_id = params[:id]
    @favorite.save

    respond_to do |format|
      format.json { render json: ApplicationController.helpers.glyph(:star) }
    end
  end

  def remove
    current_user.favorites.each do |fav|
      fav.delete if fav.ship_id == params[:id].to_i
    end

    respond_to do |format|
      format.json { render json: ApplicationController.helpers.glyph(:star_empty) }
    end
  end

end
