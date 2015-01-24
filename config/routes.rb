Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  
=======
  root 'static_pages#show'
  get 'weather' => 'static_pages#show'
  get 'home' => 'static_pages#home'

  devise_for :users, :path => 'accounts' 

  resources :users do
  	resources :favorites
  end
>>>>>>> 8ff3b53a4bccbabb41ca35fdb383a1e8dc5fc512
end
