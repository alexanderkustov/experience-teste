# == Schema Information
#
# Table name: users
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
#  image           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_token  :string(255)
#  producer        :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  
  

  has_many :products, :dependent => :destroy
  validates :email, presence: true, uniqueness: true
  attr_accessible :address, :password, :password_confirmation, 
    :birth_date, :email, :fb, :gplus, :linked, :name, 
    :nationality, :passport, :phone, :image, :remote_image_url, :ss, :twit, :producer

    mount_uploader :image, ImageUploader

  has_secure_password

  validates :name, 
    presence: true, 
    length: {maximum: 50}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, 
      presence: true, 
      format: { with: VALID_EMAIL_REGEX }, 
      uniqueness: { case_sensitive: false }

  #before_save { |user| user.email = email.downcase }
  before_save { email.downcase! }
  before_save :create_remember_token

  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  validates :birth_date, :presence => true, :if => :producer?
  validates :nationality, :presence => true, :if => :producer?
  validates :passport, :presence => true, :if => :producer?
  validates :ss, :presence => true, :if => :producer?
  validates :address, :presence => true, :if => :producer?
  validates :photo, :presence => true, :if => :producer?


  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
