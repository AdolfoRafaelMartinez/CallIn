# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100304164632) do

  create_table "accounts", :force => true do |t|
    t.integer  "accnum"
    t.string   "aces",        :limit => 60
    t.string   "accname",     :limit => 50
    t.string   "contact",     :limit => 50
    t.float    "accescrw"
    t.string   "active",      :limit => 50
    t.string   "phone",       :limit => 50
    t.string   "address1",    :limit => 50
    t.string   "address2",    :limit => 50
    t.string   "city",        :limit => 50
    t.string   "state",       :limit => 50
    t.string   "county",      :limit => 50
    t.string   "zip",         :limit => 50
    t.string   "country",     :limit => 50
    t.string   "email",       :limit => 50
    t.string   "billbyemail", :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "billtimes", :force => true do |t|
    t.date     "when"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calls", :force => true do |t|
    t.datetime "when"
    t.float    "basechrg"
    t.integer  "hits"
    t.float    "hitchrg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "t1s", :force => true do |t|
    t.float    "f1"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "xactions", :force => true do |t|
    t.integer  "account_id"
    t.datetime "when"
    t.text     "what"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
