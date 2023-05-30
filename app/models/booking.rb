class Booking < ApplicationRecord
  belongs_to :user, dependent: destroy
  belongs_to :outfit, dependent: destroy

  STATUSES = %w[booked pending cancelled]

  validates :status, presence: true
  validates :status, inclusion: { in: STATUSES }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
