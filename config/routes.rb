Rails.application.routes.draw do
  root to: 'homes#show'
  resource :dashboard, only:[:show]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :spots, only: [:show]
  resources :text_spots, only: [:create]
  resources :photo_spots, only: [:create]

end
