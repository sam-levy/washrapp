class Booking < ApplicationRecord
  mount_uploader :after_photo, PhotoUploader

  belongs_to :car
  has_one :client, through: :car, source: :user
  belongs_to :washer, foreign_key: "user_id", class_name: "User", optional: true

  validates :car, presence: true

  enum status: [:washer_pending, :washing, :washed, :completed]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
