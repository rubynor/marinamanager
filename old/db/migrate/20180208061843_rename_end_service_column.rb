class RenameEndServiceColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :services, :endservice, :end_service
  end
end
