Rails.application.routes.draw do
  root to: "pages#home"
  get 'pages/about'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users, except: [:new]
  resources :articles
  resources :categories, except: :destroy
end
