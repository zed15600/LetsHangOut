Rails.application.routes.draw do
  get 'salidas/index'
  get 'salidas/show'
  get 'salidas/new'
  get 'salidas/edit'
  get 'salidas/create'
  get 'salidas/update'
  get 'salidas/destroy'
	get 'welcome/index'

  resources :personas
  resources :restaurantes
	resources :productos

  root "welcome#index"
end
