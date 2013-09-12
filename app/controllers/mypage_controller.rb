class MypageController < ApplicationController
  def index
    redirect_to favorite_index_url
  end
end
