# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130730093802) do

  create_table "ships", :force => true do |t|
    t.string   "name",                            :null => false
    t.string   "ship_class",                      :null => false
    t.string   "ship_type",                       :null => false
    t.integer  "number",                          :null => false
    t.integer  "stamina",                         :null => false
    t.integer  "firepower",                       :null => false
    t.integer  "cuirass",                         :null => false
    t.integer  "torpedo",                         :null => false
    t.integer  "avoidance",                       :null => false
    t.integer  "antiair",                         :null => false
    t.integer  "aircapacity",                     :null => false
    t.integer  "antisubmarine",                   :null => false
    t.integer  "speed",                           :null => false
    t.integer  "scouting",                        :null => false
    t.integer  "range",                           :null => false
    t.integer  "luck",                            :null => false
    t.integer  "renovation_level",                :null => false
    t.integer  "rare",             :default => 1, :null => false
    t.text     "note"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

end
