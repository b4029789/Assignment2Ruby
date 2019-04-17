Rails.application.routes.draw do
  get 'sessions/index'
  #get 'sessions/new'
  resources :sessions
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/create'
  get 'products/update'
  get 'products/edit'
  get 'products/destroy'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/product'
  resources :products
  #get 'profiles/new'
  resources :profiles
  get 'profiles/show'
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
