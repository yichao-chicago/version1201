class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.list_id = params[:list_id]
    @item.title = params[:title]
    @item.rating = params[:rating]
    @item.store_link = params[:store_link]
    @item.description = params[:description]
    @item.pic = params[:pic]

    if @item.save
      if @item.list_id.present?
        redirect_to "/lists/#{@item.list.id}", :notice => "Item created successfully."
      else
        redirect_to "/items/#{@item.id}", :notice => "Item created successfully."
      end
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    @item.list_id = params[:list_id]
    @item.title = params[:title]
    @item.rating = params[:rating]
    @item.store_link = params[:store_link]
    @item.description = params[:description]
    @item.pic = params[:pic]

    if @item.save
      # if @item.list_id.present?
      #   redirect_to "/lists/#{@item.list.id}", :notice => "Item updated successfully."
      # else
      #   redirect_to "/items", :notice => "Item updated successfully."
      # end
      redirect_to "/items", :notice => "Item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    redirect_to "/items", :notice => "Item deleted."
  end
end
