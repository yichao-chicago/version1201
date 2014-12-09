class OffersController < ApplicationController
  before_filter :authorize

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
    @item = Item.find(params[:item_id])
  end

  def create
    @offer = Offer.new
    @offer.user_id = current_user.id
    @offer.item_id = params[:item_id]

    radio_prop = params[:full_prop]
    if radio_prop == true
      @offer.proportion = 1
    else
      @offer.proportion = params[:proportion]
    end

    @item = Item.find(params[:item_id])
    if current_user.id == @item.list.user_id
      render 'new', :notice => "You are the creator of this Wish List."
    end

    @item.status = @item.status + @offer.proportion

    if @offer.save
      @item.save
      redirect_to "/lists/#{@item.list.id}", :alert => "Offer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])

    @offer.user_id = params[:user_id]
    @offer.item_id = params[:item_id]
    @offer.proportion = params[:proportion]

    if @offer.save
      redirect_to "/offers", :notice => "Offer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @offer = Offer.find(params[:id])

    @offer.destroy

    redirect_to "/offers", :notice => "Offer deleted."
  end

  private

  def authorize
    if current_user
    else
      redirect_to "/"
    end
  end
end
