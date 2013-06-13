class Order < ActiveRecord::Base
  attr_accessible :user_id, :date, :l_price, :product_id, :qty, :telephone
end
