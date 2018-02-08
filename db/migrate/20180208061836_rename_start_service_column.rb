class RenameStartServiceColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :services, :startservice, :start_service
  end
end
