Rails.application.routes.draw do

  root 'items#index'

  resources :items do
    resources :pictures, only: [:destroy, :create, :index]
  end

  resources :bookings, except: [:index]

  devise_for :users

  get "profile" => "profile#show", as: "profile"
  get "profile/edit" => "profile#edit", as: "edit_profile"
  patch "profile" => "profile#update"

end
