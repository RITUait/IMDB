class Review < ApplicationRecord
  belongs_to :user
  belongs_to :resource, polymorphic: true
  validate :rating_limits
  #scope :most_recent,->(limit){order("created_at desc").limit(limit)}
  #validates_numericality_of :rating, :greater_than_or_equal_to => 0.0, :less_than_or_equal_to => 10.0
  def self.most_recent(limit)
    order("created_at desc").limit(limit)
  end

  def self.created_since(time)
    if time.present?
      where("reviews.created_at > ?",time)
    else
      all
    end
  end

  def rating_limits
    if rating > 5
      errors.add(:rating, "cannot be above 5")
    elsif rating < 0
      errors.add(:rating, "cannot be below 0")
    end
  end

scope :top_rated, ->(rating) {where(:rating => rating) }
end
