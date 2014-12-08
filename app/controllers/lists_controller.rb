class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new
    @list.title = params[:title]
    @list.description = params[:description]
    @list.expiration = params[:expiration]
    @list.privacy = params[:privacy]
    @list.user_id = params[:user_id]

    if @list.save
      redirect_to "/lists", :notice => "List created successfully."
    else
      render 'new'
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])

    @list.title = params[:title]
    @list.description = params[:description]
    @list.expiration = params[:expiration]
    @list.privacy = params[:privacy]
    @list.user_id = params[:user_id]

    if @list.save
      redirect_to lists_url, :notice => "List updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @list = List.find(params[:id])

    @list.destroy

    redirect_to "/lists", :notice => "List deleted."
  end
end
