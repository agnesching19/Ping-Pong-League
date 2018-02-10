class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :edit, :destroy]
  before_action :set_player, only: [:create]

  def index
    @games = Game.all
    @score = Score.new
    @player_one = Player.find_by_id(params[:player_one_id])
    @player_two = Player.find_by_id(params[:player_two_id])
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

  def edit
    @game = Game.find(params[:id])
    @player_one = @game.player_one
    @player_two = @game.player_two
    # if @game.win == @player_one
    #   @game.lost == @player_two
    # else
    #   @game.lost == @player_one
    # end
  end

  def update
    if @game.update(game_params)
      redirect_to root_path
    else
      render :edit
    end
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
    params.require(:game).permit(:results, :player_one_id, :player_two_id, :win, :lost)
  end
end
