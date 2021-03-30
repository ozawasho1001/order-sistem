# == Schema Information
#
# Table name: cuisines
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  price      :integer
#  text       :string(255)
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Cuisine < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :text, presence: true
  validates :image, presence: true

  has_many :cuisines_orders
  mount_uploader :image, ImageUploader
end
