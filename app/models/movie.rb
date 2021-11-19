class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  # You can’t delete a movie if it is referenced in at least one bookmark.


  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end
