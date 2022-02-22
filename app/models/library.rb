class Library < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :status, presence: true

  scope :get_user_library, -> { self.all.where('created_at > ?', Time.now - 48.hours ).order(created_at: :asc) }
end
