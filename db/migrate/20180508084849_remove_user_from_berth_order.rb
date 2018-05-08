class RemoveUserFromBerthOrder < ActiveRecord::Migration[5.1]
  def change
    remove_reference :berth_orders, :user, foreign_key: true
  end
end
