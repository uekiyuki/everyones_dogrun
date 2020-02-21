Rails.application.routes.draw do
  root 'dogruns#index'
  get 'relationships/create'
  get 'relationships/destroy'
  delete '/logout',to: 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]
  resources :dogruns
  resources :posts
  resources :mydogs
  resources :conversations do
    resources :messages
  end
  resources :users
  resources :users do
    member do
      get :following, :followers
    end
  end #only: [ :new, :create, :show, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :relationships, only: [:create, :destroy]
  
end

