# == Schema Information
#
# Table name: cuisines_orders
#
#  id          :bigint           not null, primary key
#  orders_id   :bigint           not null
#  cuisines_id :bigint           not null
#
# Indexes
#
#  index_cuisines_orders_on_cuisines_id  (cuisines_id)
#  index_cuisines_orders_on_orders_id    (orders_id)
#
require 'test_helper'

class CuisinesOrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
