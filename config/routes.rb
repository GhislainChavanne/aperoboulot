Rails.application.routes.draw do
  root to: 'pages#home'
  get 'equipe',  to: 'pages#equipe'
  get 'prestations',  to: 'pages#prestation'
  get 'mentions',  to: 'pages#mentions'
  get 'offredumois',  to: 'pages#offredumois'
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
end
