Rails.application.routes.draw do
  root 'home#home'

  resources :clientes
  resources :sesiones, :only => [:create]
  
  get 'signup', to: 'clientes#new', as: 'signup'
  get 'login', to: 'sesiones#new', as: 'login'
  get 'signout', to: 'sesiones#destroy', as: 'signout'
  
  get 'recipies', to: 'recipies#index', as: 'recipies'
  get 'home', to: 'home#home', as: 'home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
