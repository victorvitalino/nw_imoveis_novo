Site::Engine.routes.draw do
  root 'home#index'

  resources :properties, path: 'imoveis' do
    collection do 
      get '/detalhe/:id',                          to: 'properties#show',                   as: 'show'
      get '/:property_type',                       to: 'properties#property_type',          as: 'property_type'
      get '/:property_detail_type/:detail_type',   to: 'properties#property_detail_type',   as: 'property_detail_type'
    end
  end
end
