class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
  #validates_uniqueness_of :movie_id, :scope => [:movie_id]
end
