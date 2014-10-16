Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :index] do
    resource :following_relationship, only: [:create, :destroy]
  end

  root "shouts#index"

  resources :text_subjects, only: [:create]
  resources :image_subjects, only: [:create]
  resources :shouts, only: [:index]
  resources :followers, only: [:index]
  resource :search, only: [:show]
  
  get "/:username", to: "users#show", as: :user

end
