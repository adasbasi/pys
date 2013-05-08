class AddDonemToOdemePrograms < ActiveRecord::Migration
  def change
    add_column :odeme_programs, :donem, :string
  end
end
