Rails.application.routes.draw do

  devise_for :users

  resources :artists do
    collection do
      get 'search'
  end
end

  root 'artists#index'
  get "artists/" => "artists#index"
  get "artists/new" => "artists#new"
  get "artists/:id/edit" => "artists#edit"

end
