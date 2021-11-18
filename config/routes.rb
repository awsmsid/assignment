# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :follows, only: %i[create search]

  resources :posts, only: %i[show create]
  resources :users, only: %i[search] do
    collection do
      get 'search'
    end
  end
end
