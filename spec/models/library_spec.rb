require 'rails_helper'

RSpec.describe Library, type: :model do
  it { should belong_to(:user) }
  it { validate_presence_of(:title) }
  it { validate_presence_of(:content) }
  it { validate_presence_of(:status) }
  it { validate_presence_of(:user_id) }
end

