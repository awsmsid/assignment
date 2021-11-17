# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'follows/create'
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :follows, only: %i[create search] do
    collection do
      get 'search'
    end
  end

  resources :posts, only: %i[create]
end
