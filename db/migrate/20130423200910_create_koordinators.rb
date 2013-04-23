class CreateKoordinators < ActiveRecord::Migration
  def change
    create_table :koordinators do |t|
      t.string :kurum
      t.string :akademik
      t.string :enstitu
      t.references :odeme_program

      t.timestamps
    end
    add_index :koordinators, :odeme_program_id
  end
end
