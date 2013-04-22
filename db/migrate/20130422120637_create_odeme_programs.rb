class CreateOdemePrograms < ActiveRecord::Migration
  def change
    create_table :odeme_programs do |t|
      t.string :ad
      t.date :donem
      t.string :katsayi

      t.timestamps
    end
  end
end
