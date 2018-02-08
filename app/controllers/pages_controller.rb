class PagesController < ApplicationController
  def dashboard
    @player = Player.new
    @game = Game.new
    @games = Game.all
  end
end
