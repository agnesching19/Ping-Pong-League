class AddPlayerOneIdToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :player_one_id, :integer
  end
end
