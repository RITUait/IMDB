class MovieCast < ApplicationRecord
  belongs_to :cast
  # belongs_to :movie #or
  # belongs_to :tv
  belongs_to :resource , polymorphic: true, optional: true
  #has_many :casts
end
