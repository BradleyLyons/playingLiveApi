class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venueName, :null => false
      t.string :venueAddress, :null => false
      t.string :venueCity, :null => false
      t.string :venueState, :null => false
      t.string :venueZip, :null => false
      t.decimal :lat, :null => false
      t.decimal :lon, :null => false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
