Site::Engine.routes.draw do
  root 'home#index'

  resources :properties, path: 'imoveis' do
    collection do 
      get '/:detail_type',   to: 'properties#detail_type', as: 'detail_type'
    end
  end
end
