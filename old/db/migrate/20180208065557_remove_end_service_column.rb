class RemoveEndServiceColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :services, :end_service
  end
end
