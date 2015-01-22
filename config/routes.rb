Rails.application.routes.draw do
  root 'static_pages#home'
  get 'weather' => 'static_pages#show'
  get 'home' => 'static_pages#home'
  devise_for :users
end
