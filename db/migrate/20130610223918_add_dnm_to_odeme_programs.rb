class AddDnmToOdemePrograms < ActiveRecord::Migration
  def change
    add_column :odeme_programs, :dnm, :boolean, :default => false
  end
end
