Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'equipe',  to: 'pages#equipe'
  get 'prestations',  to: 'pages#prestation'
  resources "contacts", only: [:new, :create]
end
