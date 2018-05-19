class AddBerthsToSeasons < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :berths, :integer
  end
end
