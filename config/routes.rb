Rails.application.routes.draw do

  
  devise_for :clients, controllers: {
    sessions: "client_sessions",
    registrations: "client_registrations"
  }
  devise_for :users, controllers: {
    sessions: "user_sessions",
    registrations: "user_registrations"
  }
  
  mount Site::Engine      => '/',         as: 'site'
  mount Admin::Engine     => '/gestao',   as: 'admin'
  mount Customer::Engine    => '/cliente',  as: 'client'

end
