class RemoveColumnsFromSeason < ActiveRecord::Migration[5.1]
  def change
    remove_column :seasons, :endSeason, :date
    remove_column :seasons, :startSeason, :date
  end
end
