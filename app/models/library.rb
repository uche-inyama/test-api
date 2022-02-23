class Library < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
  validates :status, presence: true
  validates :user_id, presence: true

  scope :get_user_library, -> { self.all.where('created_at > ?', Time.now - 48.hours ).order(created_at: :asc) }
end
