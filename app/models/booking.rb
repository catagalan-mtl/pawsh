class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :outfit
  # after_initialize :set_defaults

  STATUSES = %w[accepted pending declined]

  # def set_defaults
  #   start_date = Date.today
  # end

  validates :status, presence: true
  validates :status, inclusion: { in: STATUSES }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
