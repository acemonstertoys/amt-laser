class AddNotesToLogEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :log_entries, :notes, :text
  end
end
