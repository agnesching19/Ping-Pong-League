class AddPlayerTwoToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :player_two, :string
  end
end
