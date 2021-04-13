# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  role            :integer          default(1), not null
#  admin           :boolean          default(FALSE), not null
#
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
