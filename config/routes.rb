Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/' => 'static_pages#home', :as => "root"
  resources :users
  resources :account_activations, only: [:edit]
end
