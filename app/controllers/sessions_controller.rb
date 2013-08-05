# -*- coding: utf-8 -*-
class SessionsController < ApplicationController
  def callback
    auth = request.env['omniauth.auth']
    info = auth['info']

    @user = User.find_by_provider_and_uid(auth['provider'], auth['uid']) ||
      User.create_with_omniauth(auth, info)

    @user.update_name(info['name'])
    @user.update_last_session()

    session[:user_id] = @user.id
    redirect_to root_url, :notice => 'ログインしました'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => 'ログアウトしました'
  end
end
