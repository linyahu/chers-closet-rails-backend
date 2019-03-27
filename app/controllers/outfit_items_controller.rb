class OutfitItemsController < ApplicationController

  def index
    @outfit_items = OutfitItem.all
    render json: @outfit_items
  end

  def create
    @outfit_item = OutfitItem.create(outfit_item_params)
    render json: @outfit_item
  end

  def destroy
    @outfit_item = OutfitItem.find(params[:id])
    @outfit_item.destroy

    # redirect_to 
  end

  private

  def outfit_item_params
    params.permit(:outfit_id, :item_id)
  end

end
