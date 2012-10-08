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

ActiveRecord::Schema.define(:version => 20121006205700) do

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "program_id"
  end

  create_table "authors_programs", :id => false, :force => true do |t|
    t.integer "author_id"
    t.integer "program_id"
  end

  add_index "authors_programs", ["author_id", "program_id"], :name => "index_authors_programs_on_author_id_and_program_id"

  create_table "programs", :force => true do |t|
    t.string  "name"
    t.integer "version"
    t.string  "developer"
    t.string  "website"
  end

  create_table "programs_tutorials", :id => false, :force => true do |t|
    t.integer "program_id"
    t.integer "tutorial_id"
  end

  add_index "programs_tutorials", ["program_id", "tutorial_id"], :name => "index_programs_tutorials_on_program_id_and_tutorial_id"

  create_table "tutorials", :force => true do |t|
    t.integer  "author_id"
    t.integer  "program_id"
    t.string   "name"
    t.string   "author"
    t.string   "program"
    t.string   "type"
    t.string   "link"
    t.datetime "create_date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "tutorials", ["author_id"], :name => "index_tutorials_on_author_id"

end
