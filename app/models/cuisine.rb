class Cuisine < ApplicationRecord
  
  validates :name, presence: true
  validates :price, presence: true
  validates :text, presence: true
  validates :image, presence: true
  validates :user_id, presence: true
  
  has_many :user
  mount_uploader :image, ImageUploader
end