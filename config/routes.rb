Rails.application.routes.draw do
  root 'welcome#show'

  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy', as: 'logout'

  get '/signup' => 'users#new', as: 'signup'
  post '/signup' => 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
