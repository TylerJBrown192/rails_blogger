Rails.application.routes.draw do
  devise_for :users
  root :to => 'posts#index'

  resources :users, :except => [:index] do
    resources :posts
  end

  resources :posts do
    resources :comments, :except => [:show, :index]
  end
end
