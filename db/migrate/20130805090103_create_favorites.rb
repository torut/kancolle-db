class CreateFavorites < ActiveRecord::Migration
  def change
    create_table(
                 :favorites,
                 :options => 'Engine=InnoDB DEFAULT CHARSET=utf8'
                 ) do |t|
      t.references :user, :null => false
      t.references :ship, :null => false
      t.text       :note
      t.timestamps
    end
  end
end
