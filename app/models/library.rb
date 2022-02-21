class Library < ApplicationRecord
  validates :title, presence: true
  validates :type, presence: true
  validates :status, presence: true
end
