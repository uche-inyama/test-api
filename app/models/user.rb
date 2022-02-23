class User < ApplicationRecord  
  has_many :libraries
  validates :email, presence: true
end
