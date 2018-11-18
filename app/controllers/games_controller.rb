class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:show, :update]

  def index
    games = Game.all
    render json: games
  end

  def show
    render json: @game
  end

  def Create
    game = Game.Create(game_params)
    render json: game, status: 201
  end

  private

  def game_params
    params.require(:game).permit(state: [])
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
