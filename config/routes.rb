Rails.application.routes.draw do
  
  root to: 'pages#index'
  
  get 'login', to: 'users#new'  
  resources :rents
  resources :users
  resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
