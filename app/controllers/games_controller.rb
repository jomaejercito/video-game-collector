class GamesController < ApplicationController

  def index
    @game = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:title, :console_id, :genre, :description, :release_year)
  end

end
