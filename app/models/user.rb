class User < ActiveRecord::Base
  attr_accessible :name, :provider, :uid, :last_session_at

  has_many :favorites,
    :order => 'created_at DESC'

  def self.create_with_omniauth(auth, info)
    create! do |u|
      u.provider = auth['provider']
      u.uid      = auth['uid']
      u.name     = info['name']
    end
  end

  def update_name(name)
    return if name.blank?

    self.name = name
    self.save
  end

  def update_last_session
    self.last_session_at = Time.now
    self.save
  end
end
