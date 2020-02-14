class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title,  presence: true, length: { maximum: 30 }
  validates :content,  presence: true, length: { maximum: 255 }

  belongs_to :dogrun, optional: true
  belongs_to :user, optional: true
end
