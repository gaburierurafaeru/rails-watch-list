Rails.application.routes.draw do
  resources :lists, only: [:index, :new, :create, :show] do
  resources :bookmarks, only: [:new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root to: 'lists#index'
end
resources :bookmarks, only: [:destroy]
end
