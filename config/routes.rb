Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'equipe',  to: 'pages#equipe'
  get 'prestations',  to: 'pages#prestation'
  get 'mentions',  to: 'pages#mentions'
  resources :articles, only: [:index, :show]
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
end
