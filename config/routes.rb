Rails.application.routes.draw do
  # get 'reviews/new'
  # get 'filmes/show'
  # get 'filmes/create'
  # get 'filmes/edit'
  # get 'filmes/update'
  # get 'filmes/destroy'
  devise_for :users
  root to: 'pages#home'
  # resources :filmes
  resources :filmes do
    resources :reviews, only: [:new, :create]
  end
  # resources :reviews do
  #   patch 'hide-review', to: 'reviews#hide', as: hide
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
