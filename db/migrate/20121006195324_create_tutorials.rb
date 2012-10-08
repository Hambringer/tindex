class CreateTutorials < ActiveRecord::Migration
  def up

    create_table :tutorials do |t|
      t.references :author
      t.references :program
      t.string "name"
      t.string :author
      t.string :program
      t.string "type"
      t.string "link"
      t.datetime "create_date"
      t.timestamps
    end
    add_index("tutorials", "author_id")

  end

  def down
    drop_table "tutorials"
  end
end
