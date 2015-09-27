Admin::Engine.routes.draw do
  root 'dashboard#index'

  resources :clients, path: 'clientes' do 
    collection do 
      get 'report', path: 'relatorio', as: 'report' 
    end
  end

  resources :attributes, path: 'imovel_attributos'
  resources :properties, path: 'imovel'
  resources :projects,   path: 'empreendimentos'
end
