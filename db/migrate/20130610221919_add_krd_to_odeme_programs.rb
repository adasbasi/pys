class AddKrdToOdemePrograms < ActiveRecord::Migration
  def change
    add_column :odeme_programs, :krd, :boolean, :default => false
  end
end
