Rails.application.routes.draw do

  devise_for :users
  root to: "posts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies, only: %i[index show]
  resources :posts, only: %i[index show new create edit update] do
    resources :replies, only: %i[new create destroy]
  end
end
