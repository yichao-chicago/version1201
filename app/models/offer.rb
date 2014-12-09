class Offer < ActiveRecord::Base
  belongs_to :item
  belongs_to :user

  validates :user, :presence => true
  validates :item, :presence => true
  validates :proportion, :presence => true
  validate :max_one

  def max_one
    if self.proportion > (1 - self.item.status)
      errors.add(:proportion, "Cannot exceed 100% of item value")
    end
  end
end
