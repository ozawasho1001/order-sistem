Rails.application.routes.draw do
  root 'pages#index'
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :cuisines
  
  #管理者
  namespace :admin do
    resources :users
    
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create", as: "administrator_login"
    delete '/logout',  to: 'sessions#destroy'
    
    resources :cuisines
    
    get "topics", to: "topics#index"
  end
  
end
