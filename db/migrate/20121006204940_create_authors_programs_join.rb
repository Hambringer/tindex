class CreateAuthorsProgramsJoin < ActiveRecord::Migration
  def up

    create_table :authors_programs, :id => false do |t|
      t.integer :author_id
      t.integer :program_id
    end
    add_index :authors_programs, [:author_id, :program_id]
  end

  def down
    drop_table :authors_programs
  end
end
