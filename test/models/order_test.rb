# == Schema Information
#
# Table name: orders
#
#  id            :bigint           not null, primary key
#  payment_id    :integer
#  cuisine_id    :integer
#  quantity      :integer
#  cuisine_name  :string(255)
#  cuisine_price :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#
require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
