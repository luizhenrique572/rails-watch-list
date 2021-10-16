class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies

  belongs_to :bookmark
  belongs_to :movie

  validates :movie_id, uniqueness: { scope: :list_id, message: 'please try again' }
  validates :name, length: { minimum: 1 }
end
