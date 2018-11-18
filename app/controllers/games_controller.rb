class GamesController < ApplicationController
  # Add your GamesController code here
  def Create
    @game = Game.Create(game_params)
    render json: @game, status: 201
  end

  private

  def game_params
    params.require(:game).permit(state: [])
  end
end
