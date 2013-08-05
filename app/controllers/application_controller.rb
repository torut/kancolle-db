# -*- coding: utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      session[:user_id] = nil
      redirect_to root_url, :notice => 'ログインしてください'
    end
    rescue
      session[:user_id] = nil
      redirect_to root_url, :notice => 'ログインしてください'
  end
end
