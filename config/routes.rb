Rails.application.routes.draw do
  resources :items, :outfits, :outfit_items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :items
end
