class Item < ActiveRecord::Base
  after_initialize :init

  def init
    self.status = 0 if self.status.nil?
  end
end
