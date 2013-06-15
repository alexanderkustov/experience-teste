# == Schema Information
#
# Table name: images
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  image       :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Image < ActiveRecord::Base
  attr_accessible :product_id, :image, :description
  belongs_to :product

  mount_uploader :image, ImageUploader

end
