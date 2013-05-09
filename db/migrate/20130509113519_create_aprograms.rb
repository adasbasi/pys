class CreateAprograms < ActiveRecord::Migration
  def change
    create_table :aprograms do |t|
      t.date :donem
      t.integer :katsayi
      t.references :program

      t.timestamps
    end
    add_index :aprograms, :program_id
  end
end
