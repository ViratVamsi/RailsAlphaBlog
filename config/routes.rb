Rails.application.routes.draw do
  root 'pages#home'
  
  get 'about', to: 'pages#about'
  
  resources :articles
  
  get 'signup', to: 'users#new', as: "signup"
  resources :users, except: [:new]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # get 'categories', to: "categories#index", as: "categories_url"
  resources :categories , except: [:destroy]
end
