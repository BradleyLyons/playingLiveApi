class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :eventStartTime, :null => false
      t.references :venue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
