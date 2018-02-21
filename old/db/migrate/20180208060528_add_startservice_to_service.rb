class AddStartserviceToService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :startservice, :date
  end
end
