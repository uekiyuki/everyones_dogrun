class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title,  presence: true, length: { maximum: 30 }
  validates :content,  presence: true, length: { maximum: 255 }
  validates :image, presence: true, allow_nil: true

  belongs_to :dogrun
  belongs_to :user
end
