class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.references :player, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end
