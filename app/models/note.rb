class Note < ApplicationRecord
  validates :title, :body, presence: true
  belongs_to :note_category
end