class RemovePlayerOneFromGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :player_one, :string
  end
end
