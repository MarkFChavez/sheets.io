class Note < ApplicationRecord
  validates :body, presence: true
  belongs_to :note_category
end