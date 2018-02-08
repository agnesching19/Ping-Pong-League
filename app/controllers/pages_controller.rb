class PagesController < ApplicationController
  def dashboard
    @player = Player.new
    @game = Game.new
  end
end
