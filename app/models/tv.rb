class Tv < ApplicationRecord
  has_many :movie_casts , as: :resource,dependent: :destroy
  has_many :casts , through: :movie_casts
  has_many :reviews , as: :resource
  #has_many :casts, as: :ritu
  validates :name, :genre, :release_date, :language, presence: true

  accepts_nested_attributes_for :movie_casts, allow_destroy: true

def self.search(search)
  where("name LIKE ?", "%#{search}%")
end
end
