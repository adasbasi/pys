class CreateOdemeAkademists < ActiveRecord::Migration
  def change
    create_table :odeme_akademists do |t|
      t.string :ad
      t.string :soyad
      t.string :unvan
      t.references :lecture

      t.timestamps
    end
    add_index :odeme_akademists, :lecture_id
  end
end
