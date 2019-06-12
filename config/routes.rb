Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'kitchens', to: 'kitchens#show'

  get 'menu/sections', to: 'menu#sections'
  get 'menu/items', to: 'menu#items'
end