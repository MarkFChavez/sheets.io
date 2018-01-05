require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_secure_password }

  # validations
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }

  # associations
  it { should have_many(:note_categories).dependent(:destroy) }
end