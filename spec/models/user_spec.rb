require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:libraries) }
  it { validate_presence_of(:email) }
end
