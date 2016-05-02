class TournamentsController < ApplicationController

  def index

  end

  def fetch
    @tournaments = Tournament.all
    render json: @tournaments
  end

end
