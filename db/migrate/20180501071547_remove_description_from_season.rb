class RemoveDescriptionFromSeason < ActiveRecord::Migration[5.1]
  def change
    remove_column :seasons, :description, :string
  end
end
