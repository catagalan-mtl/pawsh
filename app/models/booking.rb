class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :outfit

  STATUSES = %w[accepted pending declined]

  validates :status, presence: true
  validates :status, inclusion: { in: STATUSES }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
