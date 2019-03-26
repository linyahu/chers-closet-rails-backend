class Outfit < ApplicationRecord
  has_many :outfit_items
  has_many :items, through: :outfit_items
  belongs_to :user 


end
