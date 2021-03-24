Rails.application.routes.draw do
  get 'admin/payments'
  root "pages#index"
  resources :users
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :cuisines
  get "/orders/new", to: "orders#new"
  post "/order", to: "orders#create"
  
  #管理者
  namespace :admin do
    resources :users

    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create", as: "administrator_login"
    delete "/logout",  to: "sessions#destroy"
    
    resources :cuisines
    get "/order/index", to: "orders#index"
    delete "/order/:id", to: "orders#delete"
    get "/topics", to: "topics#index"
    get "/payments/new", to: "payments#new"
    post "/payments/index", to: "payments#index"
  end
end
