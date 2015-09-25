Rails.application.routes.draw do

  
  root 'site/home#index'
  
  mount Site::Engine      => '/',         as: 'site'
  mount Admin::Engine     => '/gestao',   as: 'admin'
  mount Client::Engine    => '/cliente',  as: 'client'

end
