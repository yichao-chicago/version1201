class Item < ActiveRecord::Base
  after_initialize :init

  belongs_to :list
  has_many :offers

  def init
    self.status = 0 if self.status.nil?
  end

  validates :rating, :presence => true
  validates :description, :presence => true
  validates :title, :presence => true
  validates :list_id, :presence => true
  # allow an item does not have list_id, considering add user_id for an item

end
