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
require 'test_helper'

class CuisineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
