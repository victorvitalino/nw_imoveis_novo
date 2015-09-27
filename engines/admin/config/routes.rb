Admin::Engine.routes.draw do
  root 'dashboard#index'

  resources :clients do 
    collection do 
      get 'report', path: 'relatorio', as: 'report' 
    end
  end
end
