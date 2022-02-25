require 'rails_helper'

RSpec.describe Movie, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:plot) }
  it { should validate_presence_of(:number) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:video_quality) }
end
