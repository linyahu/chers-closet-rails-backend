class ItemController < ApplicationController
  before_action :set_storage_url, only: [:create, :show]

  def create
        @item = Item.create(item_params)
        # If you want to get just the path without the base_url,
        # another way to do this is like this; you can also specify
        # other flags like saying this should be an attachment, etc...
        # rails_blob_path(@item.image, disposition: 'attachment')
        @item.image.attach(item_params[:image])
        render json: {
            name: @item.name,
            url: url_for(@item.image)
        }
    end

    def show
        @item = Item.find(params[:id])
        render json: {
            name: @item.name,
            url: @item.image.service_url
        }
    end

    private

    def item_params
        params.permit(:name, :image)
    end

    def set_storage_url
        ActiveStorage::Current.host = request.base_url
    end

end
