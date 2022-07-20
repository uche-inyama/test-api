class User < ApplicationRecord  
  has_many :libraries
  validates :email, presence: true
  validates :password, presence: true

  has_secure_password
end
