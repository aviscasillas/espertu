Espertu::Application.routes.draw do
  root 'home#index'
  resources :home, :location, only: :index
  resources :contact, only: [:index, :create]
end
