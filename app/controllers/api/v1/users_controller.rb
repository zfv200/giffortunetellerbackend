class Api::V1::UsersController < ApplicationController

  def index
    render json: User.includes(:fortunes), include: ['fortunes']
  end

end
