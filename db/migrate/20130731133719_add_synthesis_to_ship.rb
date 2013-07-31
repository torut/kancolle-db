class AddSynthesisToShip < ActiveRecord::Migration
  def change
    add_column :ships, :synthesis_firepower, :integer
    add_column :ships, :synthesis_torpedo, :integer
    add_column :ships, :synthesis_antiair, :integer
    add_column :ships, :synthesis_cuirass, :integer
  end
end
