class Dogrun < ApplicationRecord
  mount_uploader :dogrun_image, ImageUploader
  validates :dogrun_image, presence: true, allow_nil: true
  belongs_to :user
end
