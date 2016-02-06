class LogEntriesController < ApplicationController
  def index
    @entries = LogEntry.order("created_at desc")
  end

  def new
    @entry = LogEntry.new
  end

  def create
    @entry = LogEntry.new(log_entry_params)
    @entry.save
    respond_with @entry, location: log_entries_path
  end

  private
  def log_entry_params
    params.require(:log_entry).permit(:email, :start_count, :end_count)
  end
end
