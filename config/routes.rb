Rails.application.routes.draw do
  root 'welcome#home'

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'

  resources :users, only: [:create, :show] do
    resources :collections, except: [:index, :new, :edit]
  end

  resources :consoles do
    resources :games, except: :destroy
  end

end
