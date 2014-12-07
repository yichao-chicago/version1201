class List < ActiveRecord::Base
  has_many :items
  belongs_to :user

  validates :title, :presence => true
  validates :description, :presence => true
  validates :expiration, :presence => true
  validates :privacy, :presence => true, :inclusion => { :in => [1,2]}
  validates :user_id, :presence => true

end
