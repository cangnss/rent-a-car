Rails.application.routes.draw do
  get 'rents/index'
  get 'rents/show'
  get 'rents/edit'
  get 'rents/new'
  
  resources :users
  resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
