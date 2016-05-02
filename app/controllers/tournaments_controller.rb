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

  def delete
    @deleted_tournament = Tournament.find_by(id: params[:id])
    if @deleted_tournament != nil
      @deleted_tournament.delete
      render json: @deleted_tournament,
      status: 201
      return
    else
      render json: @deleted_tournament,
      status: 404
      return
    end
  end


  private

  def entry_params
    params.require(:tournament).permit(:name)

  end

end
