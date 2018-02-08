class RemovePlayerTwoFromGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :player_two, :string
  end
end
