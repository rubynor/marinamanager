class AddLengthToPiers < ActiveRecord::Migration[5.1]
  def change
    add_column :piers, :length, :decimal
  end
end
