Rails.application.routes.draw do
  get 'bookings/show'
  devise_for :users
  root to: "pages#home"

  resources :outfits, only: [:index, :new, :create, :show]
  resources :bookings, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
