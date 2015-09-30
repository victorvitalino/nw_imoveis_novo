Admin::Engine.routes.draw do
  root 'dashboard#index'

  resources :clients, path: 'clientes' do 
    collection do 
      get 'report', path: 'relatorio', as: 'report' 
    end
  end

  get 'client_json', to: 'projects#client_json', as: 'client_json'
  
  resources :attributes, path: 'imovel_attributos'
  resources :properties, path: 'imovel'
  resources :projects,   path: 'empreendimentos'
  resources :users,      path: 'usuarios'
  resources :buttons,    path: 'botoes'
  resources :banners,    path: 'banners'
end
