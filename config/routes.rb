Rails.application.routes.draw do
  resources :flights, only: %i[index]
  resources :bookings, only: %i[new create show]

  root 'flights#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
