class ChangeUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :type, :string
    add_column :boats, :width, :decimal
    add_column :boats, :length, :decimal
    add_column :boats, :owner_id, :integer
  end
end
