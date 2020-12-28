Rails.application.routes.draw do
  resources :tracks
  root 'tracks#index'
  get 'home/favourites'
  get 'home/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
