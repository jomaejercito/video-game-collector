class CollectionsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    binding.pry
  end

  def edit
  end

  def update
  end

  private

  def collection_params
    params.require(:collection).permit(:user_id, :game_id, :status, :hours, :review, :rating)
  end

end
