Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :reviews, :concerts, :sessions

  root 'sessions#home'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end
