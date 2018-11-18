class GamesController < ApplicationController
  # Add your GamesController code here
  def Create
    @game = Game.Create(game_params)
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
