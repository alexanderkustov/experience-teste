# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  product_id :integer
#  user_id    :integer
#  telephone  :integer
#  qty        :integer
#  date       :datetime
#  l_price    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  attr_accessible :user_id, :date, :l_price, :product_id, :qty, :telephone
end
