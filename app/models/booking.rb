class Booking < ApplicationRecord
  mount_uploader :after_photo, PhotoUploader

  belongs_to :user
  belongs_to :car
end
