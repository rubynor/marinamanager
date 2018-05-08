class AddColumnsToSeason < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :start_season_on, :date
    add_column :seasons, :end_season_on, :date
  end
end
