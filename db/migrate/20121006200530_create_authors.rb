class CreateAuthors < ActiveRecord::Migration
  def up
    create_table :authors do |t|
      t.string "name"
      t.string "website"
      t.text "description"
      t.timestamps
      t.references :program
    end
  end

  def down
    drop_table :authors
  end
end
