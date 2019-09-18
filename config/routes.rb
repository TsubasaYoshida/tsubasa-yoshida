Rails.application.routes.draw do
  resources :categories, only: [:index, :new, :edit, :create, :update, :destroy]
  resources :blogs
  resources :contacts, only: [:create, :new]
  get 'contact', to: 'contacts#new'
  get 'static_pages/home'
  get '/admin/login', to: 'sessions#new'
  post '/admin/login', to: 'sessions#create'

  root to: 'static_pages#home'
end
