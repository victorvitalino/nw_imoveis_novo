Customer::Engine.routes.draw do
  root 'dashboard#index'

  resources :properties, path: 'imoveis'
  resources :messages,   path: 'messagens'
  resources :projects,   path: 'empreendimentos'
end
