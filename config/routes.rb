Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users, only: [:index, :edit, :show, :update]
  get "home/index"
  get "home/activity"
  root "home#index"
  # get "privacy_policy", to: "home#privacy_policy"
end
