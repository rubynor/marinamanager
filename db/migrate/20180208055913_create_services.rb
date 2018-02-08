class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.decimal :price_per_month, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
