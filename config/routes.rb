Rails.application.routes.draw do
  # get '/movies', to: 'movies#index'
  root to:'movies#index'
  resources :movies

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
