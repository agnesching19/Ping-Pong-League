class ScoresController < ApplicationController
  before_action :set_player

  def index
    @scores = Score.all
  end

  def create
    @score = Score.new(score_params)
    if @score.save
      redirect_to player_path(@player)
    else
      render 'pages/dashboard'
    end
  end

  def new
    @score = Score.new
  end

  private

  def set_player
    @player = Player.find_by_id(params[:player_id])
  end

  def score_params
    params.permit(:player_id)
  end
end
