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

ActiveRecord::Schema.define(:version => 20120627181504) do

  create_table "sharks", :force => true do |t|
    t.string   "idnumber"
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
    t.integer  "origination_entry"
    t.string   "condition"
    t.decimal  "catch_latitude",              :precision => 10, :scale => 7
    t.decimal  "catch_longitude",             :precision => 10, :scale => 7
    t.text     "taggers"
    t.datetime "date_landed"
    t.string   "fisherman"
    t.string   "boat_name"
    t.string   "net_type"
    t.text     "fishing_capture_details"
    t.decimal  "release_latitude",            :precision => 10, :scale => 7
    t.decimal  "release_longitude",           :precision => 10, :scale => 7
    t.text     "release_details"
    t.datetime "release_date"
    t.string   "initial_release_disposition"
    t.decimal  "release_sst",                 :precision => 15, :scale => 10
    t.string   "sex"
    t.decimal  "total_length",                :precision => 15, :scale => 10
    t.decimal  "fork_length",                 :precision => 15, :scale => 10
    t.decimal  "precaudal_length",            :precision => 15, :scale => 10
    t.decimal  "girth",                       :precision => 15, :scale => 10
    t.decimal  "mass",                        :precision => 15, :scale => 10
    t.string   "pat_ppt_number"
    t.string   "pat_tether_number"
    t.string   "pat_loop_number"
    t.datetime "pat_release_date"
    t.string   "acoustic_code_id"
    t.string   "acoustic_serial_number"
    t.datetime "acoustic_shutdown_date"
    t.string   "spot_ppt_number"
    t.string   "archival_dst_number"
    t.text     "other_tag_details"
    t.string   "dna"
    t.decimal  "blood_drawn",                 :precision => 15, :scale => 10
    t.decimal  "tetracycline",                :precision => 15, :scale => 10
    t.boolean  "eye_stain"
    t.text     "procedure_notes"
    t.text     "comments"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
