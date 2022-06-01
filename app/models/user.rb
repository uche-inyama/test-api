class User < ApplicationRecord  
  has_many :libraries
  validates :email, presence: true

  has_secure_password
end
