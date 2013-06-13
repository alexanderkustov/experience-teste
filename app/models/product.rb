class Product < ActiveRecord::Base
	belongs_to :user
  attr_accessible :benefits, :benefits_clients, :bp_link, :desc, :dt, :estimated_rsp,
   :fixed_costs, :gross_margin, :l_price, :photos, :pp_link, :user_id, :refp_number, :sr2l, :users, :videos
end
