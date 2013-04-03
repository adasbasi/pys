class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :ad
      t.string :donem
      t.string :katsayi

      t.timestamps
    end
  end
end
