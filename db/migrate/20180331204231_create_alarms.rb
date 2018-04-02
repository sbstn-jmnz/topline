class CreateAlarms < ActiveRecord::Migration[5.1]
  def change
    create_table :alarms do |t|
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
