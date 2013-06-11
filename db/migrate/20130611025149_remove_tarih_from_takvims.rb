class RemoveTarihFromTakvims < ActiveRecord::Migration
  def up
    remove_column :takvims, :tarih
  end

  def down
  end
end
