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
    @player = Player.find(params[:player_id])
  end

  def score_params
    params.require(:score).permit(:player_id, :game_id)
  end
end
