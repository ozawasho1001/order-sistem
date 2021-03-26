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
require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
