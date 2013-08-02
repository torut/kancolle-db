class CreateEquipment < ActiveRecord::Migration
  def change
    create_table(
                 :equipment,
                 :options => 'Engine=InnoDB DEFAULT CHARSET=utf8'
                 ) do |t|

      t.string  :name, :null => false
      t.string  :type, :null => false
      t.string  :number, :null => false
      t.integer :firepower
      t.integer :torpedo
      t.integer :bomb
      t.integer :antiair
      t.integer :antisubmatine
      t.integer :scouting
      t.integer :hit
      t.integer :range
      t.boolean :can_destroyer
      t.boolean :can_light_cruiser
      t.boolean :can_heavy_cruiser
      t.boolean :can_battleship
      t.boolean :can_light_air_carrier
      t.boolean :can_air_carrier
      t.boolean :can_seeplane_carrier
      t.boolean :can_ari_cruiser
      t.integer :rare, :null => false, :default => 1
      t.text :note

      t.timestamps
    end
  end
end
