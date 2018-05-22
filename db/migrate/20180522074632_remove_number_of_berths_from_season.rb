class RemoveNumberOfBerthsFromSeason < ActiveRecord::Migration[5.1]
  def change
    remove_column :seasons, :number_of_berths, :integer
  end
end
