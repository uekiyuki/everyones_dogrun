Rails.application.routes.draw do
  delete '/logout',to: 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]
  resources :dogruns
  root 'dogruns#index'
  resources :users #only: [ :new, :create, :show, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
