class CreateSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons do |t|
      t.string :title
      t.string :description
      t.date :startSeason
      t.date :endSeason

      t.timestamps
    end
  end
end
