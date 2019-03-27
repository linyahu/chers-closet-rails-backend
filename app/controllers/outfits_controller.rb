class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all.sort_by{|outfit| outfit.id}
    render json: @outfits

  end

  def create
    @outfit = Outfit.create(outfit_params)
    # If you want to get just the path without the base_url,
    # another way to do this is like this; you can also specify
    # other flags like saying this should be an attachment, etc...
    # rails_blob_path(@outfit.image, disposition: 'attachment')
    # @outfit.image.attach(outfit_params[:image])
    render json: @outfit
  end

  def update
    @outfit = Outfit.find(params[:id])
    @outfit.update(outfit_params)
    render json: @outfit
  end

  def delete
    # also to come later...
  end

  private

  def outfit_params
      params.permit(:description, :category, :season, :user_id)
  end


end
