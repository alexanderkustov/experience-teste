# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  dt               :string(255)
#  desc             :string(255)
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
	
	belongs_to :user
	attr_accessible :benefits, :benefits_clients, :bp_link, :desc, :dt, :estimated_rsp,
   :fixed_costs, :gross_margin, :l_price, :pp_link, :user_id, :refp_number, 
   :sr2l, :users, :videos, :images_attributes

   has_many :images, dependent: :destroy

   accepts_nested_attributes_for :images, :allow_destroy => true, 
    :reject_if => proc { |attributes| attributes['image'].blank? }

end
