Espertu::Application.routes.draw do
  root 'home#index'
 
  get '/:locale' => 'home#index'
  resources :contacts, only: [:index, :create]
end
