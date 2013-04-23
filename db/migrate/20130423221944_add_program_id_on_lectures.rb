class AddProgramIdOnLectures < ActiveRecord::Migration
  def up
    add_column :lectures, :program_id, :integer
  end

  def down
  end
end
