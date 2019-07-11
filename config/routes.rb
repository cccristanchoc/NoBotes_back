Rails.application.routes.draw do
  resources :ratings
  resources :tips
  resources :solicitations do
    collection do
      get '/applicant/:id', to: 'solicitations#byApplicant'
      get '/applied/:id', to: 'solicitations#byApplied'
    end
  end
  resources :foods
  resources :foundations
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
