class ConsolesController < ApplicationController

  def index
    @console = Console.all
  end

  def show
    @console = Console.find(params[:id])
  end

end
