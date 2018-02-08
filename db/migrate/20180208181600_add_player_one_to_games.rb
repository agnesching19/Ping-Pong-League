class AddPlayerOneToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :player_one, :string
  end
end
