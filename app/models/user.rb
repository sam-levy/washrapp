class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :photo, PhotoUploader

  has_many :cars, dependent: :destroy
  has_many :bookings, dependent: :destroy # washer bookings

  # validates :photo, presence: true, if: :washer?
  # validates :phone, presence: true, length: { minimum: 5 }

  enum washer: [:false, :pending, :true]

  def washer?
    self.washer == 'true'
  end
end
