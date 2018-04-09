class DropPinumbersTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :pinumbers
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
