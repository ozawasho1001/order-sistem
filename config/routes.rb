Rails.application.routes.draw do
  resources :users
  
  #管理者
  namespace :admin do
    resources :users
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create", as: "administrator_login"
    get "/topic", to: "topics#index"
    resources :cuisines
  end
end
