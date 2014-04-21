Espertu::Application.routes.draw do
  root 'home#index'
  resources :contacts, only: [:index, :create]
end
