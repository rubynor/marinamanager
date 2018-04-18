class RemoveActiveFromService < ActiveRecord::Migration[5.1]
  def change
    remove_column :services, :active, :boolean
  end
end
