class AddProgramIdOnKoordinators < ActiveRecord::Migration
  def up
    add_column :koordinators, :program_id, :interger
  end

  def down
  end
end
