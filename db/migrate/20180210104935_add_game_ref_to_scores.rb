class AddGameRefToScores < ActiveRecord::Migration[5.1]
  def change
    add_reference :scores, :game, foreign_key: true
  end
end
