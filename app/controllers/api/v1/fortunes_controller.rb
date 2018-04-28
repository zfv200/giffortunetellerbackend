class Api::V1::FortunesController < ApplicationController

  def index
    render json: Fortune.includes(:user), include: ['user']
  end

  def create
    @fortune = Fortune.create(fortune_params)
    render json: @fortune
  end

  def fortune_data
    @fortune = Fortune.find(params[:id])
    render json: @fortune
  end

  private

  def fortune_params
    params.require(:fortune).permit(:gif, :message, :date, :user_id)
  end

end
