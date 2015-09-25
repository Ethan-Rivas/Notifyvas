class SquirrelsController < ApplicationController

  def index
    @squirrel = Squirrel.all
  end

  def show
    @squirrel = Squirrel.find(params[:id])
  end

end
