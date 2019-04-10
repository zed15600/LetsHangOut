Rails.application.routes.draw do
  get 'welcome/index'

  resources :personas
  resources :restaurantes

  root "welcome#index"
end
