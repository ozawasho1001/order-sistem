# == Schema Information
#
# Table name: cuisines_orders
#
#  id         :bigint           not null, primary key
#  order_id   :bigint           not null
#  cuisine_id :bigint           not null
#
# Indexes
#
#  index_cuisines_orders_on_cuisine_id  (cuisine_id)
#  index_cuisines_orders_on_order_id    (order_id)
#
# Foreign Keys
#
#  fk_rails_...  (cuisine_id => cuisines.id)
#  fk_rails_...  (order_id => orders.id)
#
require 'test_helper'

class CuisinesOrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
