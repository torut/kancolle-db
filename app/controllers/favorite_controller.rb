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
  end

  def remove
  end

end
