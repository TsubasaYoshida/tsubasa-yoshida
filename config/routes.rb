Rails.application.routes.draw do
  resources :contacts, only: [:create, :new]
  get 'contact', to: 'contacts#new'
  get 'static_pages/home'

  root to: 'static_pages#home'
end
