Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "top#index"

  resources :abouts, only: [:index]
  resources :blogs, only: [:index]
  resources :events, only: [:index]
  resources :items, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
