Rails.application.routes.draw do
  root 'welcome#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/auth/facebook/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  resources :users, only: [:create, :show] do
    resources :collections, only: [:index, :create, :update, :destroy]
  end

  resources :consoles, only: [:index, :show] do
    resources :games, only: :new
  end

  resources :games, except: :destroy
  post '/users/:user_id/collections/:id' => 'collections#create', as: 'addtocollection'

end
