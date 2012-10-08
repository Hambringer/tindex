class CreatePrograms < ActiveRecord::Migration
  def up
    create_table :programs do |t|
      t.string "name"
      t.integer "version"
      t.string "developer"
      t.string "website"

    end
  end

  def down
    drop_table "programs"
  end
end
