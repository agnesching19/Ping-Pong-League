class GamesController < ApplicationController
  before_action :set_game, only: [:show, :destroy]
  before_action :set_player_one, only: [:create]
  before_action :set_player_two, only: [:create]

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

  def set_player_one
    @player_one = Player.find_by_id(params[:player_id])
  end

  def set_player_two
    @player_two = Player.find_by_id(params[:player_id])
  end

  def game_params
    params.require(:game).permit(:results, :player)
  end
end
