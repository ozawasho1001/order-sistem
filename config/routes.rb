Rails.application.routes.draw do
  resources :users
  #管理者
  namespace :admin do
    resources :users
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create", as: "administrator_login"
    resources :topics
  end
end
