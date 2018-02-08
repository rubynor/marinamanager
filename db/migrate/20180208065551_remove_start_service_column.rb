class RemoveStartServiceColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :services, :start_service
  end
end
