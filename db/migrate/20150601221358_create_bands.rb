class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :bandName, :null => false
      t.string :bandPhone, :null => false
      t.references :genre, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
