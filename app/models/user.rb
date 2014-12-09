class User < ActiveRecord::Base
  after_create :add_default_list

  def add_default_list
    list = List.new
    list.title = "undecided"
    list.description = "This is a list of undecided items."
    list.expiration = "2099-12-31"
    list.privacy = "2"
    list.user_id = self.id
    list.save
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :lists
  has_many :offers
end
