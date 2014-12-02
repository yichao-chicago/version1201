class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new
    @offer.user_id = params[:user_id]
    @offer.item_id = params[:item_id]
    @offer.proportion = params[:proportion]

    if @offer.save
      redirect_to "/offers", :notice => "Offer created successfully."
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
end
