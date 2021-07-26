Rails.application.routes.draw do
  get 'games/index'
  get 'creators/index'
  resources :games, only: [:index, :create, :destroy]
  resources :creators
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

