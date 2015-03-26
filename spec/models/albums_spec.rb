require 'rails_helper'

RSpec.describe Album, type: :model do

  it { should have_many(:images) }

  it { should belong_to(:user) }

  it { should validate_uniqueness_of(:vanity_url) }
end
