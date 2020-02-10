class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  before_validation { email.downcase! }
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },uniqueness: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 4 } ,allow_nil: true
  validates :image, presence: true, allow_nil: true
  
  has_many :dogruns
  has_many :posts
  end
