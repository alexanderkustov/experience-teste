# == Schema Information
#
# Table name: customers
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  phone           :integer
#  fb              :string(255)
#  gplus           :string(255)
#  linked          :string(255)
#  twit            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class Customer < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  attr_accessible :email, :fb, :gplus, :linked, :name, :phone, :twit
  has_secure_password
end
