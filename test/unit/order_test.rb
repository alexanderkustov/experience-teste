# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  customer_id :integer
#  telephone   :integer
#  qty         :integer
#  date        :datetime
#  l_price     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
