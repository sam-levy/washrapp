class Car < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :user, presence: true
  validates :name, presence: true
  validates :license_plate, presence: true, uniqueness: true
  validates :brand, presence: true
  validates :color, presence: true
  # validates :photo, presence: true
end
