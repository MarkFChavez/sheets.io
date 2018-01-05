require 'rails_helper'

RSpec.describe Note, type: :model do
  it { should validate_presence_of(:body) }
  it { should belong_to(:note_category) }
end