class Item < ActiveRecord::Base
  after_create :init

  belongs_to :list
  has_many :offers

  def init
    self.status = 0
    self.save
  end

  validates :rating, :presence => true
  validates :description, :presence => true
  validates :title, :presence => true
  validates :list_id, :presence => true

end
