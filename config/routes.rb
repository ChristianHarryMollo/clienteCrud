Rails.application.routes.draw do
  get '/clientes', to: 'clientes#index'
  get '/clientes/new', to: 'clientes#new'
  post '/clientes', to: 'clientes#create'
  get '/cliente/:id', to: 'clientes#show', as: 'cliente'
  get '/clientes/:id/edit', to: 'clientes#edit', as: 'edit_cliente'
  patch '/cliente/:id', to: 'clientes#update'
  put '/cliente/:id', to: 'clientes#update'
  delete '/cliente/:id', to: 'clientes#delete'
  #resources :clientes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end 
