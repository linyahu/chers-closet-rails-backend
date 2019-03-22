class Item < ApplicationRecord
  has_many :outfit_items
  has_many :outfits, through: :outfit_items
  belongs_to :user

  has_one_attached :photo
  
end
