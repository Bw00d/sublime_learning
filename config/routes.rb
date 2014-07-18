SublimeLearning::Application.routes.draw do

	root to: 'lessons#landing'
  get "lessons/thats_all"

  resources :lessons, except: [:new] do
    member do
      get 'next'
    end
  end

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new',            via: 'get'
  match '/login',   to: 'sessions#new',         via: 'get'
  match '/logout', to: 'sessions#destroy',     via: 'delete'

end
