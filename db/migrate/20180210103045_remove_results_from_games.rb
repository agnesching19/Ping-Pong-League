class RemoveResultsFromGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :results, :string
  end
end
