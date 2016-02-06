class CreateLogEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :log_entries do |t|
      t.string :email
      t.integer :start_count
      t.integer :end_count

      t.timestamps
    end
  end
end
