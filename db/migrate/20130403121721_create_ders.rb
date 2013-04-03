class CreateDers < ActiveRecord::Migration
  def change
    create_table :ders do |t|
      t.string :ad
      t.string :kredi
      t.string :sube

      t.timestamps
    end
  end
end
