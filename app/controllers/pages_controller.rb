class PagesController < ApplicationController
  def dashboard
    @player = Player.new
    @players = Player.all
    @game = Game.new
    @games = Game.all
  end
end
