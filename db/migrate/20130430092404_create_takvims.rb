class CreateTakvims < ActiveRecord::Migration
  def change
    create_table :takvims do |t|
      t.date :tarih
      t.string :islem
      t.references :lecture
      t.references :akademist

      t.timestamps
    end
    add_index :takvims, :lecture_id
    add_index :takvims, :akademist_id
  end
end
