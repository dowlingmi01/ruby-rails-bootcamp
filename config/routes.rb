Rails.application.routes.draw do
  resources :courses
  get "home/index"
  root "home#index"
  # get 'static_pages/landing_page'
  # get 'static_pages/privacy_policy'
  get "privacy_policy", to: "home#privacy_policy"
end
