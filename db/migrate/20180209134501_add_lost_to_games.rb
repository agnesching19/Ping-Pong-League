class AddLostToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :lost, :string
  end
end
