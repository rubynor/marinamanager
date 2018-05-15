class CreatePiers < ActiveRecord::Migration[5.1]
  def change
    create_table :piers do |t|

      t.timestamps
    end
  end
end
