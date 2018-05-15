class AddNumberOfBerthsToSeason < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :number_of_berths, :integer
  end
end
