class CreateShips < ActiveRecord::Migration
  def change
    create_table(
                 :ships,
                 :options => 'Engine=InnoDB DEFAULT CHARSET=utf8'
                 ) do |t|

      t.string  :name, :null => false
      t.string  :ship_class, :null => false
      t.string  :ship_type, :null => false
      t.integer :number, :null => false
      t.integer :stamina
      t.integer :firepower
      t.integer :cuirass
      t.integer :torpedo
      t.integer :avoidance
      t.integer :antiair
      t.integer :aircapacity
      t.integer :antisubmarine
      t.integer :speed
      t.integer :scouting
      t.integer :range
      t.integer :luck
      t.integer :renovation_level
      t.integer :rare, :null => false, :default => 1
      t.text    :note

      t.timestamps
    end
  end
end
