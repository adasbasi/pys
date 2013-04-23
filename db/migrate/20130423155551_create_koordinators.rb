class CreateKoordinators < ActiveRecord::Migration
  def change
    create_table :koordinators do |t|
      t.string :kurum
      t.string :akademik
      t.string :enstitu

      t.timestamps
    end
  end
end
