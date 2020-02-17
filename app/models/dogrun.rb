class Dogrun < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name,  presence: true, length: { maximum: 30 }
  validates :address,  presence: true, length: { maximum: 100 }
  validates :image, presence: true, allow_nil: true
  belongs_to :user
  has_many :posts, dependent: :destroy
  
end
