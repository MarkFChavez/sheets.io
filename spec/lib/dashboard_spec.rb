require 'rails_helper'

def create_user!(name, email)
  User.create!(name: name, email: email, password: "password")
end
def create_note_category!(user, name)
  user.note_categories.create!(name: name)
end

RSpec.describe Dashboard do
  before(:all) do
    @user = create_user!("user 1", "user1@gmail.com")
    @category1 = create_note_category!(@user, "category 1")
    @category2 = create_note_category!(@user, "category 2")
  end

  it "fetches note categories" do
    dashboard = Dashboard.new(@user)
    expect(dashboard.get_note_categories.to_a).to eq [@category1, @category2]
  end
end
