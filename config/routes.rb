Rails.application.routes.draw do
  resources :recipes
  root to: 'home#index'
  get 'recepies/search', to: 'recipes#search'
  get '/count', to: 'recipes#count'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
