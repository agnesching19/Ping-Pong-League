class DropPlayerGamesTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :players_games
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
