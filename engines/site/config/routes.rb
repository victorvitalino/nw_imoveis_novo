Site::Engine.routes.draw do
  root 'home#index'

  resources :properties, path: 'imoveis'
end
