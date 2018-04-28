class Api::V1::UsersController < ApplicationController

  def index
    render json: User.includes(:fortunes), include: ['fortunes']
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def user_data
		@user = User.find(params[:id])
		render json: @user
	end

  private

  def user_params
    params.require(:user).permit(:username)
  end

end
