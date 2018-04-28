class Api::V1::FortunesController < ApplicationController

  def index
    render json: Fortune.includes(:user), include: ['user']
  end

end
