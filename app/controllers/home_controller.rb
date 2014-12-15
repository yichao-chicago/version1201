class HomeController < ApplicationController
  def homepage
  end

  def contact_us
  end

  def people
    @users = User.all
  end

  def people_home
    @user = User.find(params[:id])
    @lists = @user.lists
  end

  def mitem
    @items = current_user.items
  end

  def search
    @keyword = params[:search]
    @search_result = User.where("username like ?", "%#{@keyword}%")
  end
end
