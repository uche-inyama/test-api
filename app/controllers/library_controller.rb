class LibraryController < ApplicationController
  before_create :set_time, only: [:create]

  private

  def set_time
    self.validity = Time.now + 48.hours
  end
end