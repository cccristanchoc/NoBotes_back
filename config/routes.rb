Rails.application.routes.draw do
  resources :ratings
  resources :tips
  resources :solicitations
  resources :foods
  resources :foundations
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
