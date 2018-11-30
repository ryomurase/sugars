Rails.application.routes.draw do

devise_for :users
root 'products#index'


  resources :products do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]

end
