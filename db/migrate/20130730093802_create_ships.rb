class CreateShips < ActiveRecord::Migration
  def change
    create_table(
                 :ships,
                 :options => 'Engine=InnoDB DEFAULT CHARSET=utf8'
                 ) do |t|

      t.string  :name, :null => false
      t.string  :ship_class, :null => false
      t.integer :ship_number, :null => false
      t.string  :ship_type, :null => false
      t.integer :number, :null => false
      t.integer :stamina, :null => false
      t.integer :firepower, :null => false
      t.integer :cuirass, :null => false
      t.integer :torpedo, :null => false
      t.integer :avoidance, :null => false
      t.integer :antiair, :null => false
      t.integer :aircapacity, :null => false
      t.integer :antisubmarine, :null => false
      t.string  :speed, :null => false
      t.integer :scouting, :null => false
      t.string  :range, :null => false
      t.integer :luck, :null => false
      t.integer :renovation_level, :null => false
      t.integer :rare, :null => false, :default => 1
      t.text    :note

      t.timestamps
    end
  end
end
