class RemoveOdemeProgramIdFromLectures < ActiveRecord::Migration
  def up
    remove_column :lectures, :odeme_program_id
  end

  def down
  end
end
