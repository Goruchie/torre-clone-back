# frozen_string_literal: true

class UsersController < ApplicationController
  require 'rest-client'

  def show
    username = params[:id]
    url = "bio.torre.co/api/bios/#{username}"
    response = RestClient.get(url)
    render json: response
  end
end
