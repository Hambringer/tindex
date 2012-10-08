class TutorialsProgramsJoin < ActiveRecord::Migration
  def up
    create_table :programs_tutorials, :id => false do |t|
      t.integer :program_id
      t.integer :tutorial_id

    end
    add_index :programs_tutorials, [:program_id, :tutorial_id]
  end

  def down
    drop_table :programs_tutorials
  end
end
