class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :user_level, limit: 1
      t.string :first_name
      t.string :last_name
      t.string :phone_number, limit: 8
      t.string :street_name
      t.string :street_number, limit: 5
      t.string :post_code, limit: 4

      t.timestamps
    end
  end
end
