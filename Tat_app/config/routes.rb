Rails.application.routes.draw do

  devise_for :users
  root 'artists#index'
  get "artists/" => "artists#index"

end
