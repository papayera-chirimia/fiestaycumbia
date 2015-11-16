Rails.application.routes.draw do

  resources :albums

  get 'static_pages/image'

  get 'static_pages/video'

  get 'static_pages/contact'

  get 'static_pages/help'

  #match '/image', to: 'static_pages#image',  via: 'get'
  #match '/video',	to: 'static_pages#video',  via: 'get'
  #match '/contact',   to: 'static_pages#contact',  via: 'get'
  #match '/help', to: 'static_pages#help',  via: 'get'

  root to: 'visitors#index'
  devise_for :users, controllers: {registrations: 'registrations'}
  resources :users

  resources :clientes
  devise_for :clientes
  
end
