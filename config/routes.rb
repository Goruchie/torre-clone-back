# frozen_string_literal: true

Rails.application.routes.draw do
  get '/users/marcosgualtero43253', to: 'users#show'
  resources :users
end
