# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  producer_id      :integer
#  dt               :string(255)
#  desc             :string(255)
#  users            :integer
#  benefits         :string(255)
#  estimated_rsp    :string(255)
#  l_price          :string(255)
#  benefits_clients :string(255)
#  photos           :string(255)
#  videos           :string(255)
#  sr2l             :string(255)
#  refp_number      :string(255)
#  fixed_costs      :string(255)
#  gross_margin     :string(255)
#  bp_link          :string(255)
#  pp_link          :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Product < ActiveRecord::Base
	belongs_to :producer
  attr_accessible :benefits, :benefits_clients, :bp_link, :desc, :dt, :estimated_rsp,
   :fixed_costs, :gross_margin, :l_price, :photos, :pp_link, :producer_id, :refp_number, :sr2l, :users, :videos
end
