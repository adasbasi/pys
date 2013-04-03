class CreateHafta < ActiveRecord::Migration
  def change
    create_table :hafta do |t|
      t.date :tarih
      t.boolean :durum

      t.timestamps
    end
  end
end
