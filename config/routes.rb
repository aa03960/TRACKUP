Rails.application.routes.draw do
  get 'contacts/index'		
  post 'contacts/index'
  devise_for :useers
  resources :tracks
  root 'home#index'
  get 'home/favourites'
  get 'home/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
