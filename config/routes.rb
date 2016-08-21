Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  to: 'emails#index'
  get 'emails', to: 'emails#index'
  resources :emails
end
