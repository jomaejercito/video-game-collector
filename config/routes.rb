Rails.application.routes.draw do
  root 'welcome#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :users, only: [:create, :show] do
    resources :collections, except: [:index, :new, :edit]
  end

  resources :consoles do
    resources :games, except: :destroy
  end

end
