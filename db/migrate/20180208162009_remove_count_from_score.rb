class RemoveCountFromScore < ActiveRecord::Migration[5.1]
  def change
    remove_column :scores, :count, :integer
  end
end
