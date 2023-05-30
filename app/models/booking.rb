class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :outfit

  STATUSES = %w[booked pending cancelled]

  validates :status, presence: true
  validates :status, inclusion: { in: STATUSES }
end
