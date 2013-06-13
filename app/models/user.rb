class User < ActiveRecord::Base
  
  

  has_many :products, :dependent => :destroy
  validates :email, presence: true, uniqueness: true
  attr_accessible :address, :password, :password_confirmation, 
    :birth_date, :email, :fb, :gplus, :linked, :name, 
    :nationality, :passport, :phone, :photo, :ss, :twit
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

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
