class ScoresController < ApplicationController
  before_action :set_player
  before_action :set_game

  def index
    @scores = Score.all
  end

  def new
    @score = Score.new
  end

  def create
    @score.player_id = @winner
    @score = Score.new(score_params)
    if @score.save
      redirect_to game_path(@game)
    else
      render 'pages/dashboard'
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def set_player
    @game = Game.find(params[:game_id])
    if @game.win.to_i === @game.player_one_id
      @winner = Player.find(@game.player_one_id)
    elsif @game.win.to_i === @game.player_two_id
      @winner = Player.find(@game.player_two_id)
    end
  end

  def score_params
    params.permit(:game_id)
  end
end
