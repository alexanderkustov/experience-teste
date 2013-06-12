# == Schema Information
#
# Table name: producers
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  phone           :integer
#  fb              :string(255)
#  gplus           :string(255)
#  linked          :string(255)
#  twit            :string(255)
#  birth_date      :date
#  nationality     :string(255)
#  passport        :string(255)
#  ss              :string(255)
#  address         :string(255)
#  photo           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class Producer < ActiveRecord::Base
  has_many :products, :dependent => :destroy
  validates :email, presence: true, uniqueness: true
  attr_accessible :address, :birth_date, :email, :fb, :gplus, :linked, :name, :nationality, :passport, :phone, :photo, :ss, :twit
  has_secure_password
end
