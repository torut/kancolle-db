class CreateUsers < ActiveRecord::Migration
  def change
    create_table(
                 :users,
                 :options => 'Engine=InnoDB DEFAULT CHARSET=utf8'
                 ) do |t|

      t.string :provider, :null => false
      t.string :uid, :null => false
      t.string :name, :null => false
      t.datetime :last_session_at

      t.timestamps
    end
  end
end
