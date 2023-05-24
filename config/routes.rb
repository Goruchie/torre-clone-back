# frozen_string_literal: true

Rails.application.routes.draw do
  get '/dogs', to: "users#show"
  resources :users
end
