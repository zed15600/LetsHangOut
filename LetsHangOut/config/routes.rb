Rails.application.routes.draw do
	get 'welcome/index'

  resources :personas
  resources :restaurantes
	resources :productos
	resources :compras
	resources :pagos

  root "welcome#index"
end
