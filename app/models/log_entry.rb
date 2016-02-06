class LogEntry < ApplicationRecord
  validates :email, :start_count, :end_count, presence: true
  validates :email, format: {with: /.+@.+\..+/i, message: "is not a valid email address"}
end
