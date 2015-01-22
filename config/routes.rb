Rails.application.routes.draw do

  get 'weather' => 'weather_pages#show'
  devise_for :users
end
