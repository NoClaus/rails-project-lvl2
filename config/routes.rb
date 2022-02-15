# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  
  scope module: :web do
    root 'posts#index'
    resources :posts, only: %i[index new create show destroy] do
      resources :comments, only: :create
    end
  end
end
