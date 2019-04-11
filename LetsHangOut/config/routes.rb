Rails.application.routes.draw do
	get 'welcome/index'

  resources :personas
  resources :restaurantes
	resources :productos

  root "welcome#index"
end
