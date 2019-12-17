Rails.application.routes.draw do
  get 'bcl/index'
  resources :categories, only: [:index, :new, :edit, :create, :update, :destroy]
  resources :blogs do
    collection do
      get :management
    end
  end
  resources :contacts, only: [:create, :new]
  get 'contact', to: 'contacts#new'
  get 'static_pages/home'
  get '/admin/login', to: 'sessions#new'
  post '/admin/login', to: 'sessions#create'

  root to: 'static_pages#home'
end
