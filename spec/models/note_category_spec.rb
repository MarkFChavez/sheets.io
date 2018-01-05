require 'rails_helper'

RSpec.describe NoteCategory, type: :model do
  it { should validate_presence_of(:name) }
  it { should belong_to(:user) }
  it { should have_many(:notes).dependent(:destroy) }
end