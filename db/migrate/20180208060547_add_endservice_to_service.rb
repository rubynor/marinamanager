class AddEndserviceToService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :endservice, :date
  end
end
