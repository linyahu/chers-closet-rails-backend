class ItemsController < ApplicationController
  before_action :set_storage_url, only: [:create, :show]


  def index
    @items = Item.all
    render json: @items
  end

  def create
        @item = Item.create(item_params)
        # byebug
        # If you want to get just the path without the base_url,
        # another way to do this is like this; you can also specify
        # other flags like saying this should be an attachment, etc...
        # rails_blob_path(@item.image, disposition: 'attachment')
        @item.image.attach(item_params[:image])
        render json: {
            user_id: @item.user_id,
            url: url_for(@item.image)
        }
  end

  def show
      @item = Item.find(params[:id])
      render json: {
          user_id: @item.user_id,
          url: @item.image.service_url
      }
  end

  private

  def item_params
      params.permit(:image, :user_id)
  end

  def set_storage_url
      ActiveStorage::Current.host = request.base_url
  end

end
