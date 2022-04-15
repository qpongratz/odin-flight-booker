Rails.application.routes.draw do
  resources :flights, only: %i[index new create]

  root 'flights#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
