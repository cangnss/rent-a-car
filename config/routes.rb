Rails.application.routes.draw do
  devise_for :users, controller:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get 'addresses/new'
  
  root to: 'pages#index'
  
  resources :rents
  resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
