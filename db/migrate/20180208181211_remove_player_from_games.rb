class RemovePlayerFromGames < ActiveRecord::Migration[5.1]
  def change
    remove_reference :games, :player, foreign_key: true
  end
end
