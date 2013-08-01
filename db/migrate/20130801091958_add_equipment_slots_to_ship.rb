class AddEquipmentSlotsToShip < ActiveRecord::Migration
  def change
    add_column :ships, :equipment_slots, :integer
  end
end
