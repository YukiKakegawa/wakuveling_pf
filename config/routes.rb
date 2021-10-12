Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#top'

  resources :users

  resources :posts do
    resources :post_comments, only:[:create,:destroy]
    resource :goods, only:[:create,:destroy]
    resource :favorites, only:[:create,:destroy]
  end

  resources :tourist_spots
end
