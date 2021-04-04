# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  role            :integer          default("general"), not null
#  admin           :boolean          default(FALSE), not null
#
class User < ApplicationRecord
  validates :name, presence: true, length: { minimu: 5, maximum: 50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  has_secure_password

  has_many :orders
end
