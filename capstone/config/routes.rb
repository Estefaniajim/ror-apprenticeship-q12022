Rails.application.routes.draw do
  get 'trainers/index'
  get 'trainers/show'
  get 'trainers/new'
  get 'trainers/edit'
  get 'pokemons/index'
  get 'pokemons/show'
  get 'pokemons/new'
  get 'pokemons/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :pokemons
  resources :trainers
  # Defines the root path route ("/")
  # root "articles#index"
end
