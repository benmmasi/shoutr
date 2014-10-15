Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :index, :show] do
    resource :following_relationship, only: [:create, :destroy]
  end

  resources :text_subjects, only: [:create]

  root "shouts#index"

  resources :shouts, only: [:index]
end
