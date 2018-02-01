class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :last_name
      t.string :first_name
      t.string :phone, limit: 8
      t.string :address
      t.string :bank_account, limit: 11
      t.integer :user_level, limit: 1, default: 0
    end
  end
end