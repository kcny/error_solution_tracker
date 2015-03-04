Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/about'
  get 'pages/contact'
  # get 'bug_archives' => "bug_archives#index"
  # get 'bug_archives/:id' => "bug_archives#show", as: "bug_archive"

  get 'ui(/:action)', controller: 'ui'

  resources :bug_archives

end
