class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :destroy]

  def index
    @players = Player.all
    @score = Score.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to players_path
    else
      render 'pages/dashboard'
    end
  end

  def new
    @player = Player.new
  end

  def show
    @scores = Score.where(player_id: @player)
  end

  def destroy
    @player.destroy
    redirect_to players_path
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name)
  end
end
