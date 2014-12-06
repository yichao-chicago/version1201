class Item < ActiveRecord::Base
  after_initialize :init

  belong_to :list
  has_many :offers

  def init
    self.status = 0 if self.status.nil?
  end
end
