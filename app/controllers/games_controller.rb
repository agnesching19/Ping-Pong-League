class GamesController < ApplicationController
  before_action :set_game, only: [:show, :destroy]

  def index
    @games = Game.all
  end

  def create
    @game = Game.new(game_params)
    @player = Player.new(player_params)
    if @game.save
      redirect_to games_path
    else
      render 'pages/dashboard'
    end
  end

  def new
    @game = Game.new
    @player = Player.new
  end

  def show
  end

  def destroy
    @game.destroy
    redirect_to root_path
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:results, :player)
  end

  def player_params
    params.permit(:name)
  end
end
