class AddUserRefToBoats < ActiveRecord::Migration[5.1]
  def change
    add_reference :boats, :user, foreign_key: true
  end
end
