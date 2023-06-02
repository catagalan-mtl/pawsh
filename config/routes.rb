Rails.application.routes.draw do
  get 'bookings/show'
  devise_for :users
  root to: "pages#home"

  resources :outfits, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :index] do
    patch "/state", to: "bookings#update_state", as: "update_state"
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
