class Cast < ApplicationRecord
 # attr_accessor :image
  has_many :movie_casts, dependent: :destroy
  has_many :movies, through: :movie_casts, source: :resource, source_type: 'Movie'
  has_many :tvs, through: :movie_casts, source: :resource, source_type: 'Tv'
  has_many :images, as: :resource, dependent: :destroy
  #has_many :movies, as: :resource
  #has_many :tvs, as: :resource
  #belongs_to :ritu,polymorphic: true
   #belongs_to :movie_casts
  validates :name, presence: true
  accepts_nested_attributes_for :images, allow_destroy: true
end
