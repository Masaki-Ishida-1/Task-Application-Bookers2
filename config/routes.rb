Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'homes_about'
  resources :users, only: [:new, :index, :show, :edit, :create, :update]
  resources :books, only: [:new, :index, :show, :edit, :create, :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
