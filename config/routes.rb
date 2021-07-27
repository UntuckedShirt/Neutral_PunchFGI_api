Rails.application.routes.draw do
  #namespace :api, path: '/', constraints: {subdomain 'api'} do
  resources :games, only: [:index, :create, :destroy, :update, :show]
  resources :creators
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

