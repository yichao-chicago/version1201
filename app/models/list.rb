class List < ActiveRecord::Base
  has_many :items
  belong_to :user


end
