Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'user/new'
  get 'user/create'
  # Defines the root path route ("/")
  # root "posts#index"
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/about", to: "pages#about"
  get "/legalnotice", to: "pages#legalnotice"
  get "/dataprotection", to: "pages#dataprotection"
  get "/signup", to: "pages#signup"

  resources :users, only: [:new, :create]
end
