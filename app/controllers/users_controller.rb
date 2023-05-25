# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_access_control_headers

  require 'rest-client'

  def show
    username = params[:id]
    url = "bio.torre.co/api/bios/#{username}"
    response = RestClient.get(url)
    render json: response
  end

  private

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'GET'
  end
end
