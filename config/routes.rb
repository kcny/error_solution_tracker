Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/about'
  get 'pages/contact'
  
  get '/register',       to: 'users#new'
  get '/login',         to: 'sessions#new'
  post '/login',        to: 'sessions#create'
  delete '/logout',        to: 'sessions#destroy'
  
  resources :users
  
  resources :bug_archives do
    collection do  
      post :search, to: "bug_archives#search"
    end
  end
  get 'ui(/:action)', controller: 'ui'

end
