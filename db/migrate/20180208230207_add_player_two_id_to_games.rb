class AddPlayerTwoIdToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :player_two_id, :integer
  end
end
