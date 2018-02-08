class AddPlayerRefToGames < ActiveRecord::Migration[5.1]
  def change
    add_reference :games, :player, foreign_key: true
  end
end
