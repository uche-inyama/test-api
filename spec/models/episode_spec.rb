require 'rails_helper'

RSpec.describe Episode, type: :model do

  it { should belong_to(:season) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:plot) }
  it { should validate_presence_of(:episode_number) }
  it { should validate_presence_of(:season_id) }

end
