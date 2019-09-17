Rails.application.routes.draw do
  resources :categories, only: [:index, :new, :edit, :create, :update, :destroy]
  resources :blogs
  resources :contacts, only: [:create, :new]
  get 'contact', to: 'contacts#new'
  get 'static_pages/home'

  root to: 'static_pages#home'
end
