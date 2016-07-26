Rails.application.routes.draw do

  devise_for :users
  resources :artists
  root 'artists#index'
  get "artists/" => "artists#index"
  get "artists/new" => "artists#new"
end
