class Outfit < ApplicationRecord
  has_many :outfit_items
  has_many :items, through: :outfit_items
  belongs_to :user

  def delete_item_from_outfits
    array = self.outfit_items
    array.map {|a| a.destroy }
  end
  
end
