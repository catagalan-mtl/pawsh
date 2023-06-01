class Outfit < ApplicationRecord
  ANIMALS = %w[Cat Dog Lizard Squirrel Parrot]
  SIZES = %w[XS S M L XL]

  belongs_to :user

  validates :title, presence: true
  validates :size, inclusion: { in: SIZES }
  validates :description, presence: true
  validates :price_per_day, presence: true
  validates :animal, inclusion: { in: ANIMALS }

  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
