Rails.application.routes.draw do
  devise_for :users
  root to: "kitchens#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :kitchens do
    resources :features, only: :create
    resources :bookings, only: [ :new, :create, :show]
  end

  resources :features, only: :destroy do
    resources :feature_tags, only: [ :new, :create ]
  end
end
