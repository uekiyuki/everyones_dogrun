class Mydog < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name,  presence: true, length: { maximum: 30 }
  validates :breed,  presence: true, length: { maximum: 255 }
  validates :age,  presence: true, length: { maximum: 10 }
  validates :gender,  presence: true, length: { maximum: 10 }
  validates :image, presence: true, allow_nil: true

  belongs_to :user, optional: true
  enum gender: { male: 1, female: 2 }

end
