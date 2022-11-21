Rails.application.routes.draw do

  devise_for :users
  root to: "home#top"
  get 'home/about', to: 'home#about', as: 'about'
  
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update, :destory]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end