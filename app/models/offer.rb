class Offer < ActiveRecord::Base
  belongs_to :item
  belongs_to :user

  validates :user, :presence => true
  validates :item, :presence => true
end
