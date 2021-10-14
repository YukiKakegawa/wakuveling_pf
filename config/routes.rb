Rails.application.routes.draw do

  root to: 'homes#top'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  resources :posts do
    resources :post_comments, only:[:create,:destroy]
    resource :goods, only:[:create,:destroy]
    resource :favorites, only:[:create,:destroy]
  end

  resources :tourist_spots
end
