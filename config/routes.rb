Rails.application.routes.draw do
  # get 'filmes/show'
  # get 'filmes/create'
  # get 'filmes/edit'
  # get 'filmes/update'
  # get 'filmes/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :filmes 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
