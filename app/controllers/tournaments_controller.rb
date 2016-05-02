class TournamentsController < ApplicationController

  def index

  end

  def fetch
    @tournaments = Tournament.all
    render json: @tournaments
  end

  def create
    @new_tournament = Tournament.create(entry_params)
    render json: @new_tournament,
    status: 201
  end

  private

  def entry_params
    params.require(:tournament).permit(:name)

  end

end
