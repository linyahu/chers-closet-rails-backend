class Item < ApplicationRecord
  has_many :outfit_items
  has_many :outfits, through: :outfit_items
  belongs_to :user

  has_one_attached :image

  def delete_item_from_outfits
    array = self.outfit_items
    array.map {|a| a.destroy }
  end
  
end
