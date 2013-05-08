class RemoveDonemFromOdemePrograms < ActiveRecord::Migration
  def up
    remove_column :odeme_programs, :donem
  end

  def down
  end
end
