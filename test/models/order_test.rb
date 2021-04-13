# == Schema Information
#
# Table name: orders
#
#  id            :bigint           not null, primary key
#  payment_id    :integer
#  user_id       :bigint           not null
#  quantity      :integer
#  cuisine_name  :string(255)
#  cuisine_price :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
