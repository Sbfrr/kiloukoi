Rails.application.routes.draw do

  root 'items#index'

  resources :items do
    resources :pictures, only: [:destroy, :create, :index]
  end

  devise_for :users
  resources :users

end
