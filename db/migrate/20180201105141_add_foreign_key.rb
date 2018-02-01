class AddForeignKey < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :boats, :users, column: :owner_id, primary_key: "id"
  end
end
