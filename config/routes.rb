Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'customers#new'
  get '/customers/', to: 'customers#new'
  resources :customers, :only => [:create]
  get 'confirmation', to: 'customers#confirmation'
end
