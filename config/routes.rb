# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#show', id: 'marcosgualtero43253'

  resources :users
end
