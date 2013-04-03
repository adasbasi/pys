class CreateHocas < ActiveRecord::Migration
  def change
    create_table :hocas do |t|
      t.string :ad
      t.string :soyad
      t.string :unvan

      t.timestamps
    end
  end
end
