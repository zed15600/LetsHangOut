Rails.application.routes.draw do
  get 'restaurantes/index'
  get 'restaurantes/show'
  get 'restaurantes/new'
  get 'restaurantes/edit'
  get 'restaurantes/create'
  get 'restaurantes/update'
  get 'restaurantes/destroy'
  get 'welcome/index'
  
  resources :personas

  root "welcome#index"
end
