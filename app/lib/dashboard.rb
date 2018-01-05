class Dashboard
  def initialize(user)
    @user = user
  end

  def get_note_categories
    @user.note_categories
  end
end