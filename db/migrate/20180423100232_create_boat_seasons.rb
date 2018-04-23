class CreateBoatSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :boat_seasons do |t|
      t.string :title
      t.date :startSeason
      t.date :endSeason

      t.timestamps
    end
  end
end
