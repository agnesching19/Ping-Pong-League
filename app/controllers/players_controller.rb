class PlayersController < ApplicationController
  before_action :set_player, only: [:show]

  def index
    @players = Player.all
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
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name)
  end
end
