# == Schema Information
#
# Table name: payments
#
#  id         :bigint           not null, primary key
#  pay        :integer
#  settled    :boolean          default(FALSE), not null
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Payment < ApplicationRecord
  validates :pay, presence: true
  validates :settled, presence: true
  validates :user_id, presence: true
  
  has_many :user
end
