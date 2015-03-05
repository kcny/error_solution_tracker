Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/about'
  get 'pages/contact'
  resources :users
  
  resources :bug_archives do
    collection do  
      post :search, to: "bug_archives#search"
    end
  end
  get 'ui(/:action)', controller: 'ui'
end
