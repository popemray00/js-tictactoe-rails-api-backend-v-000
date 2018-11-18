class GamesController < ApplicationController
  # Add your GamesController code here
  def Create
    @game = Game.Create
  end
end
