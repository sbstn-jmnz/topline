class AddClosedToSeasons < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :closed, :boolean
  end
end
