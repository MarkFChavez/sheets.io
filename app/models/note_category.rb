class NoteCategory < ApplicationRecord
  validates_presence_of :name
  belongs_to :user
  has_many :notes, dependent: :destroy
end