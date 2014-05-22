Rails.application.routes.draw do

  root 'items#index'

  resources :items do
    resources :pictures, only: [:destroy, :create, :index]
  end

  resources :bookings, except: [:index]

  devise_for :users

  get "profile" => "users#show", as: "profile"
  get "profile/edit" => "users#edit", as: "edit_profile"
  patch "profile" => "users#update"

end
