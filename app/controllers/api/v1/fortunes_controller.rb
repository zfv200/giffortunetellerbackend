class FortunesController < ApplicationController

  def index
    render json: Fortune.includes(:users), include: ['users']
  end

end
