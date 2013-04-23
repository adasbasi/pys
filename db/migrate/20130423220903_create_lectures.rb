class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :ad
      t.string :kredi
      t.string :sube
      t.references :odeme_program

      t.timestamps
    end
    add_index :lectures, :odeme_program_id
  end
end
