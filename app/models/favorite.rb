class Favorite < ActiveRecord::Base
  attr_accessible :note, :ship_id, :user_id

  belongs_to :ship

end
