Rails.application.routes.draw do
  root "pages#index"

  resources :users do
  end

  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"

  resources :cuisines do
  end

  resources :orders do
  end

  #管理者
  namespace :admin do
    resources :users do
    end

    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create", as: "administrator_login"
    delete "/logout",  to: "sessions#destroy"

    resources :cuisines, format: :html do
    end

    resources :orders do
    end

    resources :topics do
    end
  end
end
