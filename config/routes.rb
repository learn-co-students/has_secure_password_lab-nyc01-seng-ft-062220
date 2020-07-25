Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  
  get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  root 'welcome#home'
end
