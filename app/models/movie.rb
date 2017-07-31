class Movie < ApplicationRecord
  #has_many :movie_casts
  has_many :movie_casts, as: :resource, dependent: :destroy
  has_many :casts, through: :movie_casts
  has_many :reviews, as: :resource
  #belongs_to :resource,polymorphic: true
 # has_many :casts,as: :ritu
  validates :name, :genre, :language, :release_date, presence: true
  validates :name, uniqueness: true 

  accepts_nested_attributes_for :movie_casts, allow_destroy: true

scope :movie_name, ->(name) {where(:name => name)}
scope :movie_language, ->(language) {where(:language => language)}
scope :movie_genre, ->(genre) {where(:genre => genre)}
end
