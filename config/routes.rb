Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: "pages#home"
  # root to: "movies#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "posts#index


  resources :wishlist, only: [:new, :create, :destroy, :show]
  resources :likes, only: [:index, :new, :create, :destroy]
  resources :movies, only: [:index, :new, :create, :destroy, :show]
end
