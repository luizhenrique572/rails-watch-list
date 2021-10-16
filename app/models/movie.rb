class Movie < ApplicationRecord
  has_many :bookmarks

  validates :movie_id, uniqueness: { scope: :list_id, message: 'please try again' }
  validates :name, length: { minimum: 1 }
end
