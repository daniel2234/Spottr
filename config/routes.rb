Rails.application.routes.draw do
  root to: 'homes#show'
  resource :dashboard, only:[:show]
  resource :session, only: [:new, :create, :destroy]
  resource :search, only:[:show]
  resources :users, only: [:index, :new, :create, :show] do
  	post 'follow' => 'following_relationships#create'
  	delete 'follow' => 'following_relationships#destroy'
  end
  resources :spots, only: [:show]
  resources :text_spots, only: [:create]
  resources :photo_spots, only: [:create]
  resources :hashtags, only: [:show]

end
