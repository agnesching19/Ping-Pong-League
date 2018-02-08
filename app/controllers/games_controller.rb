class GamesController < ApplicationController
  before_action :set_game, only: [:show, :destroy]
  before_action :set_player, only: [:create]

  def index
    @games = Game.all
  end

  def create
    @game = Game.new(game_params)
    @player = Player.new
    if @game.save
      redirect_to games_path
    else
      render 'pages/dashboard'
    end
  end

  def new
    @game = Game.new
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

  def set_player
    @player = Player.find_by_id(params[:player])
  end

  def game_params
    params.require(:game).permit(:results, :player_one, :player_two)
  end
end
