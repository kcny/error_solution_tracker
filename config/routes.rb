Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/about'
  get 'pages/contact'

  get 'ui(/:action)', controller: 'ui'

end
