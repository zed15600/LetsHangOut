Rails.application.routes.draw do
  get 'productos/index'
  get 'productos/show'
  get 'productos/new'
  get 'productos/edit'
  get 'productos/create'
  get 'productos/update'
  get 'productos/destroy'
  get 'welcome/index'

  resources :personas
  resources :restaurantes

  root "welcome#index"
end
