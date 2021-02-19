class User < ApplicationRecord
  validates :name, presence: true
  validates :mail, presence: true

  has_secure_password
end
